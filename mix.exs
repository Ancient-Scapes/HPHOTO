defmodule Hphoto.MixProject do
  use Mix.Project

  def project do
    [
      app: :hphoto,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:logger, :extwitter],
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:oauther, "~> 1.1"},
      {:extwitter, "~> 0.8"}
    ]
  end
end
