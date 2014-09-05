def wonky_coins(n)

  return 1 if n == 0

  wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)

end

# def count_down(n)
#   puts n
#   return if n == 0
#   count_down(n - 1)
# end