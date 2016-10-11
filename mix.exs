defmodule Stringify.Mixfile do
  use Mix.Project

  def project do
    [app: :stringify,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Brings Ruby style inspect and Javascript style stringify to elixir",
     package: package,
     name: "stringify",
     docs: [source_url: "https://github.com/MishaConway/elixir-stringify"]]
  end

  defp package do
    [contributors: ["Misha Conway"],
    licenses: ["MIT"],
    links: %{github: "https://github.com/MishaConway/elixir-stringify"},
    maintainers: ["Misha Conway"],
    files: ~w(mix.exs README.md CHANGELOG.md lib)]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
