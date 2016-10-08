defmodule :iTest do
  use ExUnit.Case
  doctest :i

  test "map" do
    map = %{a: 1, b: 2, c: 3}
    assert :i.i(map) === "%{a: 1, b: 2, c: 3}"
  end

  test "list" do
    list = [1, "a", :t]
    assert :i.i(list) === "[1, \"a\", :t]"
  end

  test "tuple" do
    tuple = {1, "a", :t}
    assert :i.i(tuple) === "{1, \"a\", :t}"
  end
end
