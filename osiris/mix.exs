defmodule Osiris.MixProject do
  use Mix.Project

  def project do
    [
      app: :osiris,
      version: "1.0.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    []
  end

  defp package do
    [
      name: "osiris",
      files: ~w(osiris README* LICENSE*),
      links: %{"GitHub": "https://github.com/silverp1/osiris"}
    ]
  end
end
