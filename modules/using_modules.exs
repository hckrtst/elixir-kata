# basic module usage
defmodule Times do
   def double(n) do
      n * 2
   end
   def quadruple(n) do
      2 * double(n)
   end
end

Times.double(34) |> IO.puts
Times.quadruple(34) |> IO.puts

# more with modules
defmodule Factorial do
  def fact(0), do: 1
  def fact(n), do: n*fact(n-1)
end

# whoa this is fast!
"Factorial of 5000 is #{Factorial.fact(5000)}" |> IO.puts

# bad factorial - remember to always provide the most specific cases first
defmodule BadFactorial do
   def fact(n), do: n*fact(n-1)
   def fact(0), do: 1
end