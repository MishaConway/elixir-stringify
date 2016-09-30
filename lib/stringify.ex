defmodule Stringify do
  def inspect(item) do
    stringify item
  end

  def stringify(item) do
    opts   = struct(Inspect.Opts, [])
    Inspect.Algebra.format(Inspect.Algebra.to_doc(item, opts), opts.width)
    |> to_string
  end
end
