require_relative 'frequencies'

text = File.open('data/article.txt').read

frequencies = histogram(text)

p frequencies = frequencies.sort_by { |word, count| count }.reverse

frequencies.each do |word, count|
  puts "#{word}: #{count}"
end
