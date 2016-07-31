# Pass function as an argument
times_3 = fn a -> 3 * a end
xform = fn (fun, val) -> fun.(val) end
xform.(times_3, 20) |> IO.puts

# internally elixir uses this mechanism as well
# ex: look at the Enum module's map func
list = [2,3,4,5,10]
list2 = Enum.map list, fn e -> e * 10 end
list2 |> inspect |> IO.puts

# Using the `&` operator provides a shortcut
# so you can do this instead of 
# fn a,b -> a + b end
adder = &(&1 + &2)

IO.puts "Adder returned #{adder.(10, 12)}"

#Can also be used to create shortcuts like so
len = &length(&1)
li = [1,2,3,4]
"The length of li is #{len.(li)}" |> IO.puts