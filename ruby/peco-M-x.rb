#!/usr/bin/env ruby
path_array= `printenv PATH`.chomp!.split(":")

concat_str = ""
path_array.each { |path| concat_str += `ls #{path}` }
puts concat_str.chomp!
