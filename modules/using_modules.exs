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


"Factorial of 5 is #{Factorial.fact(5)}" |> IO.puts
