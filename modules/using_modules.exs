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