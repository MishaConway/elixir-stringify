defmodule :i do
  def i(item) do
    stringify item
  end

  def inspect(item) do
    stringify item
  end

  defp stringify(item) do
    opts = struct(Inspect.Opts)
    item
    |> Inspect.Algebra.to_doc(opts)
    |> Inspect.Algebra.format(opts.width)
    |> to_string
  end
end
