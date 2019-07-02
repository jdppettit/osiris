defmodule Osiris.MixProject do
  use Mix.Project

  def project() do
    [
      app: :osiris,
      version: "1.0.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def application() do
    []
  end

  defp deps() do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description() do
    "A random assortment of helper functions"
  end

  defp package() do
    [
      name: "osiris",
      links: %{"GitHub": "https://github.com/silverp1/osiris"},
      licenses: ["MIT"]
    ]
  end
end
