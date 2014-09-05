def no_repeat?(year)
  array_years = year.to_s.split("")
  if array_years.uniq.length == array_years.length
    return true
  else 
    return false
  end
end

def no_repeats(year_start, year_end)
  no_repeat_years = []
  years = (year_start..year_end) 
    years.each do |year|
      if no_repeat?(year)
        no_repeat_years << year
      end
    end
  return no_repeat_years
end