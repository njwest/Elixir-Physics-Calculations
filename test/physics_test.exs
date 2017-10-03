defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "greets the world" do
    assert Physics.hello() == :world
  end

  test "chooglin'" do
    assert 1 + 4 == 5
  end
end
