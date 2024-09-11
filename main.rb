n = 12
customers = (1..n).to_a

non_alcoholic_orders = [1, 3, 5, 1, 7, 8]
alcoholic_orders = [2, 5, 7, 7, 3, 9, 10]

# 1. Загальний список замовлень та загальна кількість замовлень
total_orders = non_alcoholic_orders + alcoholic_orders
total_orders_count = total_orders.size

# 2. Список клієнтів, що сьогодні відвідали кафе
all_visitors = (non_alcoholic_orders + alcoholic_orders).uniq
total_visitors_count = all_visitors.size

# 3. Кількість "безалкогольних" замовлень
non_alcoholic_orders_count = non_alcoholic_orders.size

# 4. Кількість і список клієнтів (без повторень), що робили "безалкогольні" замовлення
non_alcoholic_customers = non_alcoholic_orders.uniq
non_alcoholic_customers_count = non_alcoholic_customers.size

# 5. Кількість "алкогольних" замовлень
alcoholic_orders_count = alcoholic_orders.size

# 6. Кількість і список клієнтів (без повторень), що робили "алкогольні" замовлення
alcoholic_customers = alcoholic_orders.uniq
alcoholic_customers_count = alcoholic_customers.size

# 7. Кількість та список клієнтів, що робили обидва типи замовлень
both_types_customers = non_alcoholic_customers & alcoholic_customers
both_types_customers_count = both_types_customers.size

# 8. Кількість та список постійних клієнтів, що сьогодні не відвідували кафе
non_visitors = customers - all_visitors
non_visitors_count = non_visitors.size

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
