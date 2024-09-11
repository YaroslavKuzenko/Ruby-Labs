n = 12
customers = (1..n).to_a

non_alcoholic_orders = [1, 3, 5, 1, 7, 8]
alcoholic_orders = [2, 5, 7, 7, 3, 9, 10]

# 1. Загальний список замовлень та загальна кількість замовлень
total_orders = []
non_alcoholic_orders.each do |order|
  total_orders << order
end
alcoholic_orders.each do |order|
  total_orders << order
end
total_orders_count = total_orders.size

# 2. Список клієнтів, що сьогодні відвідали кафе (без повторень)
all_visitors = []
total_orders.each do |order|
  all_visitors << order unless all_visitors.include?(order)
end
total_visitors_count = all_visitors.size

# 3. Кількість "безалкогольних" замовлень та клієнти (без повторень)
non_alcoholic_customers = []
non_alcoholic_orders_count = 0
non_alcoholic_orders.each do |order|
  non_alcoholic_orders_count += 1
  non_alcoholic_customers << order unless non_alcoholic_customers.include?(order)
end
non_alcoholic_customers_count = non_alcoholic_customers.size

# 4. Кількість "алкогольних" замовлень та клієнти (без повторень)
alcoholic_customers = []
alcoholic_orders_count = 0
alcoholic_orders.each do |order|
  alcoholic_orders_count += 1
  alcoholic_customers << order unless alcoholic_customers.include?(order)
end
alcoholic_customers_count = alcoholic_customers.size

# 5. Кількість та список клієнтів, що робили обидва типи замовлень
both_types_customers = []
non_alcoholic_customers.each do |customer|
  if alcoholic_customers.include?(customer)
    both_types_customers << customer
  end
end
both_types_customers_count = both_types_customers.size

# 6. Кількість та список постійних клієнтів, що сьогодні не відвідували кафе
non_visitors = []
customers.each do |customer|
  unless all_visitors.include?(customer)
    non_visitors << customer
  end
end
non_visitors_count = non_visitors.size

# Виведення результатів
puts "1. Загальний список замовлень: #{total_orders}"
puts "   Загальна кількість замовлень: #{total_orders_count}"

puts "2. Список клієнтів, що сьогодні відвідали кафе: #{all_visitors}"
puts "   Кількість відвідувачів: #{total_visitors_count}"

puts "3. Кількість 'безалкогольних' замовлень: #{non_alcoholic_orders_count}"

puts "4. Список клієнтів (без повторень), що робили 'безалкогольні' замовлення: #{non_alcoholic_customers}"
puts "   Кількість клієнтів з безалкогольними замовленнями: #{non_alcoholic_customers_count}"

puts "5. Кількість 'алкогольних' замовлень: #{alcoholic_orders_count}"

puts "6. Список клієнтів (без повторень), що робили 'алкогольні' замовлення: #{alcoholic_customers}"
puts "   Кількість клієнтів з алкогольними замовленнями: #{alcoholic_customers_count}"

puts "7. Список клієнтів, що робили обидва типи замовлень: #{both_types_customers}"
puts "   Кількість клієнтів з обома типами замовлень: #{both_types_customers_count}"

puts "8. Список постійних клієнтів, що сьогодні не відвідували кафе: #{non_visitors}"
puts "   Кількість постійних клієнтів, що не відвідали кафе: #{non_visitors_count}"
