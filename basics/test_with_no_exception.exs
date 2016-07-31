content = "Elixir is different and pretty cool!"

systemd = with {:ok, file} = File.open("/etc/passwd"),
   # this var is local to this scope
   content = IO.read(file, :all),
   :ok = File.close(file),
   # ignore the name itself and just extract ther uid and pid.
   # Instead of `=` we are using `<-`.
   # This avoids MatchError and handles it with a nil. 
   [_, uid, gid] <- Regex.run(~r/fake.*?bus.*?:.*?:(\d+):(\d+)/, content)
   do
      "Userid=#{uid}, Gid=#{gid}"
   end

# This will print nil if failed
IO.puts inspect(systemd)
# Uses the var from outer scope
IO.puts content