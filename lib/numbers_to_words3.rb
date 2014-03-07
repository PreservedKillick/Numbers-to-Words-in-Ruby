def numbers_to_words(number)

  # 542,345
  # digits.length = 6
  # length_result =  digits.length/3.0
  #   if length_result/3.0 > 1 && length_result <= 2
  #     apply RULES
  #     add "thousand" to results at results[(results.length-4)]
  #   elsif length_result/3.0 > 2 && length_result <= 3
  #     apply RULES
  #     add "thousand" to results at results[(results.length-4)]
  #     add "million" to results at results[(results.length-7)]

end

def the_rules(number)
  results = []
  ones = {
    0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
    7 => "seven", 8 => "eight", 9 => "nine"
  }
  teens = {
    1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen",
    6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"
  }
  doubles = {
    2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty",
    9 => "ninety"
  }

  keyword = {
    1 => "trillion",
  }
  digits = []

  while number > 0
    digits.unshift(number % 10)
    number /= 10
  end


  while digits != []
    digits.each do |num|
      if digits.length == 3
        results << ones[num]
        results << " hundred "
      elsif digits.length == 2 && digits[0] == 1
        sec_dig = digits[1]
        results << teens[sec_dig]
        digits.shift
      elsif digits.length == 2
        sec_dig = digits[-2]
        results << doubles[sec_dig]
      elsif digits.length == 1
        results << ones[num]
      end
    x = digits.shift
    end
  end

  results = results.join + keyword[]
  results
end

print numbers_to_words(45)
