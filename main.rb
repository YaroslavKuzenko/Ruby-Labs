text = 'Pes Patron AB256 ruby ROR 2025 tech!'

text_size = text.length

uppercase_count = text.scan(/[A-Z]/).size
lowercase_count = text.scan(/[a-z]/).size
digit_count = text.scan(/\d/).size

words_array = text.split

sorted_words_by_length = words_array.sort_by(&:length)

capitalized_words = words_array.map { |word| word.capitalize }

suspected_abbreviations = words_array.select { |word| word.match?(/[A-Za-z]/) && word.match?(/\d/) }

sorted_text_by_descending_length = words_array.sort_by(&:length).reverse.join(" ")

puts "\n1. Розмір рядка: #{text_size}"
puts "2. Кількість заголовних букв: #{uppercase_count}"
puts "   Кількість прописних букв: #{lowercase_count}"
puts "   Кількість цифр: #{digit_count}"

puts "\n3. Масив слів: #{words_array}"
puts "4. Слова, впорядковані за зростанням довжини: #{sorted_words_by_length}"

puts "\n5. Слова з першою заголовною літерою: #{capitalized_words}"

puts "\n6. Абревіатури (містять букви та цифри): #{suspected_abbreviations}"

puts "\n7. Новий рядок, впорядкований за спаданням довжини слів: #{sorted_text_by_descending_length}"
