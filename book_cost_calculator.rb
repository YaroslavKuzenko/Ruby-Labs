def get_input(prompt)
  print prompt
  gets.to_i
end

def calculate_book_cost(pages, circulation)
  author_fee_per_page = 24.0
  layout_cost_percentage = 0.3
  typography_set_cost_per_page = 1.2
  paper_cost_per_page = 0.16
  cover_cost = 3.0
  ink_cost_per_page = 0.04
  amortization_cost_per_page = 0.08
  profit_percentage = 0.23
  tax_percentage = 0.3

  # Редакційні витрати
  author_fee = author_fee_per_page * pages
  layout_cost = layout_cost_percentage * author_fee
  typography_set_cost = typography_set_cost_per_page * pages
  editorial_expenses_total = author_fee + layout_cost + typography_set_cost
  editorial_expenses_per_book = editorial_expenses_total / circulation #загальні редакційні витрати на книгу

  # Типографські витрати
  paper_cost = paper_cost_per_page * pages + cover_cost
  ink_cost = ink_cost_per_page * pages
  amortization_cost = amortization_cost_per_page * pages
  typography_expenses_per_book = paper_cost + ink_cost + amortization_cost #загальні типографські витрати на книгу

  # Собівартість книги
  production_cost_per_book = editorial_expenses_per_book + typography_expenses_per_book

  # Прибуток і податки
  profit_per_book = production_cost_per_book * profit_percentage
  total_cost_per_book_before_tax = production_cost_per_book + profit_per_book
  tax_per_book = total_cost_per_book_before_tax * tax_percentage
  total_cost_per_book = total_cost_per_book_before_tax + tax_per_book

  # Прибуток видавництва на тиражі
  total_profit = profit_per_book * circulation

  {
    author_fee: author_fee,
    production_cost_per_book: production_cost_per_book,
    total_profit_from_circulation: total_profit,
    tax_per_book: tax_per_book,
    total_cost_per_book: total_cost_per_book
  }
end

def print_results(results)
  puts "\nРезультати обчислень:"
  puts "+------------------------------------------+--------------------------+"
  puts "| Показник                                 | Значення (UAH)           |"
  puts "+------------------------------------------+--------------------------+"
  puts "| Авторський гонорар                       | #{format('%.2f', results[:author_fee]).rjust(24)} |"
  puts "| Собівартість однієї книги                | #{format('%.2f', results[:production_cost_per_book]).rjust(24)} |"
  puts "| Прибуток видавництва від всього тиражу   | #{format('%.2f', results[:total_profit_from_circulation]).rjust(24)} |"
  puts "| Податок на один екземпляр                | #{format('%.2f', results[:tax_per_book]).rjust(24)} |"
  puts "| Загальна вартість одного екземпляру      | #{format('%.2f', results[:total_cost_per_book]).rjust(24)} |"
  puts "+------------------------------------------+--------------------------+"
end
