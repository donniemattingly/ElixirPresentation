defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :postgrex, :edeliver]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:poison, "~> 2.1", override: true},
     {:phoenix, "~> 1.2"},
     {:phoenix_html, "~> 2.5"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:postgrex, "~> 0.12.1"},
     {:cowboy, "~> 1.0"},
     {:edeliver, "~> 1.4.3"},
     {:exmoji, "~> 0.2.2"},
     {:distillery, "~> 1.4", runtime: false}]
  end
end
