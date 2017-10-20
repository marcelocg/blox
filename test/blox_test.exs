defmodule BloxTest do
  use ExUnit.Case
  doctest Blox

  test "greets the world" do
    assert Blox.hello() == :world
  end
end
