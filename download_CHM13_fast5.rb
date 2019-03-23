#! /usr/bin/ruby
require 'parallel'
require 'csv'

filename = "links.csv"
rawdata = CSV.read(filename, headers:false)
links = Hash.new()
rawdata.each{|i|
  links[i[0].to_i] = i[1]
}
Parallel.each(1..links.size){|i|
  

}


=begin
if File.exist?("CHM13") != true
  `git clone https://github.com/nanopore-wgs-consortium/CHM13`
end
`mkdir -p CHM13_fast5`
filename = "CHM13/README.md"
links    = Hash.new()
File.open(filename, "r"){ |fp|
  fp.each_line {|line|
    if line.include?("nanopore/fast5") && line.include?("md5")
      url = line.split(" ")[2].split("\"")[1]
      id  = url.split("/")[-1].split(".")[0][-3, 3].to_i
      links[id] = url
    end
  }
}
links.each{|l|
  print l[0].to_s + ", " + l[1] + "\n"
}
=end
