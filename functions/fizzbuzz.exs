# Write a function that takes three arguments. If the first two are zero, return “FizzBuzz.” If the first is zero, return “Fizz.” 
# If the second is zero, return “Buzz.” Otherwise return the third argument.

fizzy = fn
   #explicitly defining for context
   a=0,b=0,c=_ -> "FizzBuzz"
   # this is way cleaner
   0,_,_ -> "Fizz"
   _,0,_ -> "Buzz"
   _,_,c  -> c
end

fizzy.(0,0,3) |> IO.puts
fizzy.(0,1,3) |> IO.puts
fizzy.(1,0,1) |> IO.puts
fizzy.(1,1,4) |> IO.puts

remmy = fn n -> fizzy.(rem(n,3), rem(n,5), n) end

[remmy.(10), remmy.(11), remmy.(12), remmy.(13), remmy.(14), remmy.(15), remmy.(16)] |> inspect |> IO.puts