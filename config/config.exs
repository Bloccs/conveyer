use Mix.Config

if Mix.env() == :dev do
  config :mix_test_watch,
    tasks: [
      "format",
      "test",
      "credo"
    ]
end

config :git_ops,
  mix_project: Conveyer.MixProject,
  changelog_file: "CHANGELOG.md",
  repository_url: "https://github.com/Bloccs/conveyer",
  types: [
    # Makes an allowed commit type called `tidbit` that is not
    # shown in the changelog
    tidbit: [
      hidden?: true
    ],
    # Makes an allowed commit type called `important` that gets
    # a section in the changelog with the header "Important Changes"
    important: [
      header: "Important Changes"
    ],
    style: [
      hidden?: false,
      header: "Improvements"
    ],
    test: [
      hidden?: false,
      header: "Improvements"
    ],
    ci: [
      hidden?: false,
      header: "Improvements"
    ],
    refactor: [
      hidden?: false,
      header: "Improvements"
    ],
    perf: [
      hidden?: false,
      header: "Improvements"
    ]
  ],
  # Instructs the tool to manage your mix version in your `mix.exs` file
  # See below for more information
  manage_mix_version?: true,
  # Instructs the tool to manage the version in your README.md
  # Pass in `true` to use `"README.md"` or a string to customize
  manage_readme_version: "README.md"
