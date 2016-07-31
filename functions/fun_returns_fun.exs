prefix = fn p ->
   fn a -> "#{p} #{a}" end
end
miss = prefix.("Miss ")

miss.("Kitty") |> IO.puts
prefix.("Elixir").("Rocks") |> IO.puts