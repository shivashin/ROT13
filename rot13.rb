def rot13(str)
  answer = ""
  str.chars {|char|
    if char == char.upcase
      if (char.ord + 13) / ("Z".ord + 1) != 0
        answer = answer + ((char.ord + 13) % "Z".ord + "A".ord - 1).chr 
      else
        answer = answer + ((char.ord + 13) % "Z".ord).chr 
      end
    end
  }
  return answer
end

if __FILE__ == $0
  str = "UNGRAN"
  answer = rot13(str)
  puts answer
end
