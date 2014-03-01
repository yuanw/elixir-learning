fizzBuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzBuzz2 = fn n -> fizzBuzz.(rem(n,3), rem(n,5), n) end

# IO.puts fizzBuzz2.(10)
# IO.puts fizzBuzz2.(11)
# IO.puts fizzBuzz2.(12)
# IO.puts fizzBuzz2.(13)
# IO.puts fizzBuzz2.(14)
# IO.puts fizzBuzz2.(15)
# IO.puts fizzBuzz2.(16)
# IO.puts fizzBuzz2.(17)

prefix = fn n -> (fn other -> n <> " " <> other end) end

IO.puts prefix.("Mrs").("Smith")
IO.puts prefix.("Elixir").("Rocks")

