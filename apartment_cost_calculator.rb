def get_input(prompt)
  print prompt
  gets.chomp
end

def calculate_commercial_cost(area, material, floor, district, style, category)
  # Коефіцієнти
  material_index = case material
                   when 'панельний' then 300
                   when 'цегляний' then 500
                   when 'композит' then 800
                   else 0
                   end

  floor_coefficient = case floor
                      when 1, 2, 8, 9 then 1.1
                      when 3..7 then 1.4
                      else 1
                      end

  district_coefficient = case district
                         when 'центр' then 1.7
                         when 'спальний' then 1.4
                         when 'приміський' then 1.15
                         else 1
                         end

  style_coefficient = case style
                      when 'хайтех' then 2.0
                      when 'ексклюзів' then 1.7
                      when 'індивідуал' then 1.5
                      when 'стандарт' then 1.05
                      else 1
                      end

  category_coefficient = case category
                         when 'елітна' then 1.75
                         when 'бюджетна' then 1.5
                         when 'пільгова' then 1.07
                         else 1
                         end

  # Собівартість (СВ)
  base_cost = area * material_index

  # Розміщення (РМ)
  placement_cost = base_cost * floor_coefficient * district_coefficient

  # Вартість забудовника (ПЗ)
  developer_price = placement_cost * style_coefficient

  # Загальна вартість (ЗВ)
  total_cost = developer_price * category_coefficient

  {
    base_cost: base_cost,
    developer_price: developer_price,
    total_cost: total_cost
  }
end
def print_results(results)
  puts "\nРезультати обчислень:"
  puts "+------------------------------------------+--------------------------+"
  puts "| Показник                                 | Значення (UAH)           |"
  puts "+------------------------------------------+--------------------------+"
  puts "| Собівартість (СВ)                        | #{format('%.2f', results[:base_cost]).rjust(24)} |"
  puts "| Вартість забудовника (ПЗ)                | #{format('%.2f', results[:developer_price]).rjust(24)} |"
  puts "| Загальна вартість квартири (ЗВ)          | #{format('%.2f', results[:total_cost]).rjust(24)} |"
  puts "+------------------------------------------+--------------------------+"
end
