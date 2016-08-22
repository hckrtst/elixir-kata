defmodule Example do
  def func(p1, p2\\3, p3\\4, p4) do
    IO.inspect [p1,p2,p3,p4]
  end
end

defmodule Params do
  def f(p1, p2\\90) do
  
  end

  def f(p1, p2) do
    "You gaves me #{p1} and #{p2}"
  end

end
Example.func(1,"b")
Example.func(1,20,30,"hat")
