#! /usr/bin/ruby
require 'parallel'

if File.exist?("CHM13") != true
  `git clone https://github.com/nanopore-wgs-consortium/CHM13`
end
`mkdir -p CHM13_fast5`
filename = "CHM13/README.md"
File.open(filename, "r"){ |fp|
  fp.each_line {|line|
    if line.include?("nanopore/fast5") && line.include?("md5")
      downloadlink = line.split(" ")[2].split("\"")[1]
      patrition    = downloadlink.split("/")[-1]
      `wget #{downloadlink} -P CHM13_fast5/`
      `rm CHM13_fast5/#{patrition}`
    end
  }
}

