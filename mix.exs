defmodule Template.MixProject do
  use Mix.Project

  def project do
    [
      app: :template,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Template, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nostrum, "~> 0.6"}
    ]
  end

  defp aliases do
    [
      "dev.setup": ["clean", "deps.get", "compile"],
      start: ["run --no-halt"]
    ]
  end
end
