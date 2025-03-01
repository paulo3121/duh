defmodule DuhTest do
  use ExUnit.Case
  doctest Duh

  test "greets the world" do
    assert Duh.hello() == :world
  end
end
