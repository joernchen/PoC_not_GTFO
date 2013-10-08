#!/usr/bin/env ruby

f=File.open(ARGV[0])

h = Hash.new
f.each_line do |m|
  n = m.to_i
  if h[n].nil?
    h[n]=1
  else 
    h[n] = h[n]+1
  end
end

t = h.sort_by  do |k,v| v end
t.each do |a|
  puts "Num:\t#{a[0]}\tCount:\t#{a[1]}\tWeight:\t#{a[0].to_s(2).split("").reject{|j|j=="0"}.count}"
end
