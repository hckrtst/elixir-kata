defmodule Portal.Door do
  @doc"""
  starts a door with the given `color`.

  The color is represented by a name so
  we can identify it more easily.
  """
  def start_link(color) do
    Agent.start_link(fn -> [] end, name: color)
  end


