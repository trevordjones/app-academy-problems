def no_repeat?(year)
  array_years = year.to_s.split("")
  return array_years.uniq.length == array_years.length
end

def no_repeats(year_start, year_end)
  (year_start..year_end).each_with_object([]) do |year, array|
    array << year if no_repeat?(year)
  end
end