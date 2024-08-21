require_relative 'book_cost_calculator'

def main
  pages = get_input("Введіть кількість сторінок: ")
  circulation = get_input("Введіть тираж: ")

  results = calculate_book_cost(pages, circulation)
  print_results(results)
end

main