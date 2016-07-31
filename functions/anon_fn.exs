# functions
f = fn (a,b,c) -> a * b * c end
g = fn (a,b) ->
   a = a*2
   b = b + 5
   [a , b]
end

swap = fn{a,b} -> {b,a} end

list_concat = fn(list1, list2) ->
   list1 ++ list2
end

defmodule Test do
   # First approach, not so nice
   def sum(list) do
      t = nil
      case length(list) do
         1 -> h = list
         _ -> [h|t] = list
      end
      #h |> IO.puts
      #t |> inspect |> IO.puts
      case t do
         nil -> 0
         _ -> h + sum(t)
      end
   end

   # Second approach, way better!
   def sum_list([h|t], acc) do
      sum_list(t, h + acc)
   end
   # define a specific method for the empty list case!
   def sum_list([], acc) do
      acc
   end

   def tuple_to_list(t) do
      Tuple.to_list(t)
   end
end



# test
IO.puts f.(2,3,4)
IO.puts f.(4,5,-9.8)
g.(4, 7) |> inspect |> IO.puts # TODO why does this print '\b\f'
g.(400, 7) |> inspect |> IO.puts
[4,5,63333] |> inspect |> IO.puts

swap.({6, 100}) |> inspect |> IO.puts
list_concat.([2,3,4,5], [5,6,9]) |> inspect |> IO.puts

Test.sum([3,4,5]) |> IO.puts
Test.sum_list([1,2,3,4,5], 0) |> IO.puts
Test.tuple_to_list({3, 4, 10, 9}) |> inspect |> IO.puts