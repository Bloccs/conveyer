defmodule Conveyer.MixProject do
  use Mix.Project

  @name :conveyer
  @version "0.1.0"

  @deps [
    # { :earmark, ">0.1.5" },
    # { :ex_doc,  "1.2.3", only: [ :dev, :test ] },
    # { :my_app:  path: "../my_app" },
    {:ex_doc, "~> 0.19", only: :dev, runtime: false},
    {:excoveralls, "~> 0.10", only: :test},
    {:ex_unit_notifier, "~> 0.1", only: :test},
    {:git_ops, "~> 0.6.0"},
    {:mix_test_watch, "~> 0.8", only: :dev, runtime: false},
    {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false}
  ]

  @aliases [
    release: ["git_ops.release", "cmd git push --follow-tags"],
    "release.test": ["git_ops.release --dry-run"],
    review: ["format", "credo"]
  ]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      app: @name,
      version: @version,
      elixir: ">= 1.6.6",
      deps: @deps,
      test_coverage: [tool: ExCoveralls],
      aliases: @aliases,
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: in_production,
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],

      # Docs
      name: "Conveyer",
      source_url: "https://gitlab.com/bloccsio/conveyer",
      docs: [
        main: "Conveyer"
      ]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
