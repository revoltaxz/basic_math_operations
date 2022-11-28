defmodule BasicMathOperationsTest do
  use ExUnit.Case
  doctest BasicMathOperations

  test "greets the world" do
    assert BasicMathOperations.hello() == :world
  end
end
