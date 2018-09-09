defmodule Conveyer.Mixfile do
  use Mix.Project

  @name :conveyer
  @version "0.1.0"

  @deps [
    # { :earmark, ">0.1.5" },
    # { :ex_doc,  "1.2.3", only: [ :dev, :test ] },
    # { :my_app:  path: "../my_app" },
    {:ex_doc, "~> 0.19", only: :dev, runtime: false},
    {:mix_test_watch, "~> 0.8", only: :dev, runtime: false},
    {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false}
  ]

  @aliases []

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      app: @name,
      version: @version,
      elixir: ">= 1.6.6",
      deps: @deps,
      aliases: @aliases,
      elixirc_paths: ["lib"],
      build_embedded: in_production
    ]
  end
end
