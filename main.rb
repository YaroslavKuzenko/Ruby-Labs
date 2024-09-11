require_relative 'apartment_cost_calculator'

def main
  area = get_input("Введіть метраж квартири: ").to_f
  material = get_input("Введіть матеріал (панельний, цегляний, композит): ").downcase
  floor = get_input("Введіть поверх: ").to_i
  district = get_input("Введіть район (центр, спальний, приміський): ").downcase
  style = get_input("Введіть стиль (хайтех, ексклюзів, індивідуал, стандарт): ").downcase
  category = get_input("Введіть категорію (елітна, бюджетна, пільгова): ").downcase

  results = calculate_commercial_cost(area, material, floor, district, style, category)

  print_results(results)
end

main
