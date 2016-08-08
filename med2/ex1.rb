File.open("read.txt", "a+") do |file|
  text = File.read(file)
  new_contents = text.gsub("?", ".").gsub("!", ".")
  array = new_contents.split(".")
  p array.sort_by { |sentence| sentence.split(" ").size }[-1].split(" ").size
end