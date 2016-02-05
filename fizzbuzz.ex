defmodule FizzBuzz do
  def run(from, to), do: Enum.map(from..to, &(IO.puts(fizzer(&1)))) 
    
  def fizzer(n), do: response(rem(n, 3), rem(n, 5), n)
  
  def response(0, 0, _), do: "FizzBuzz"
  def response(0, _, _), do: "Fizz"
  def response(_, 0, _), do: "Buzz"
  def response(_, _, c), do: c
  
  def guess(a, r..q), do: guess_again(a, r..q, q)
  
  def guess_again(a, r..q, b) when a < b do
    q = r + div((q - r), 2)
    IO.puts("Is it #{q}?")
    guess_again(a, r..q, q)
  end
  
  def guess_again(a, r..q, b) when a > b do
    q = b + div((q - r), 2) + 1
    IO.puts("Is it #{q}?")
    guess_again(a, b..q, q)
  end
  
  def guess_again(a, _.._, b) when a == b do
    IO.puts("Aha! It is #{a}.")
  end
  
end

# fizzbuzz =
#   fn
#     0, 0, _ -> "FizzBuzz"
#     0, _, _ -> "Fizz"
#     _, 0, _ -> "Buzz"
#     _, _, c -> c
#   end
#
# fizzy = fn n -> fizzbuzz.(rem(n, 3), rem(n,5), n) end
#
# Enum.map(1..20, fn n -> IO.puts(fizzy.(n)) end)
#
# prefix =
#   fn s ->
#     fn t ->
#       "#{s} #{t}"
#     end
#   end
#
