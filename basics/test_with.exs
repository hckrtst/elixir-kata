content = "Elixir is different and pretty cool!"

systemd = with {:ok, file} = File.open("/etc/passwd"),
   # this var is local to this scope
   content = IO.read(file, :all),
   :ok = File.close(file),
   # ignore the name itself and just extract ther uid and pid 
   [_, uid, gid] = Regex.run(~r/system.*?bus.*?:.*?:(\d+):(\d+)/, content)
   do
      "Userid=#{uid}, Gid=#{gid}"
   end

IO.puts systemd
# Uses the var from outer scope
IO.puts content