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

# this is a suboptiomal soln....see below
res = Enum.map [1,3,6,9,7,10,12], &(rem(&1, 3) == 0) 
res |> inspect |> IO.puts

# CAUTION: Without parantheses this prints each on a new line!
Enum.map [1,3,6,9,7,10,12], &(rem(&1, 3) == 0)  |> inspect |> IO.puts

# This is what we want
(Enum.map [1,3,6,9,7,10,12], &(rem(&1, 3) == 0))  |> inspect |> IO.puts

# This...
Enum.each [1,2,3,4,5,60], fn x -> IO.inspect x end
# can be rewritten as...
Enum.each [1,2,3,4,5,60], &(IO.inspect &1)
# or as this...
Enum.each [1,2,3,4,5,60], &IO.inspect/1