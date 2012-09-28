f1 = File.open("flickr1.html", "w")
f = File.open("flickr.html").each do |line|
    f1.puts "puts \"#{line}\""
end
