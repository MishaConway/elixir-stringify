defmodule :i do
  def i(item) do
    stringify item
  end

  def inspect(item) do
    stringify item
  end

  def stringify(item) do
    Stringify.stringify item
  end
end
