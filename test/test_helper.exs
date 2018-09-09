ExUnit.configure(exclude: [external: true], formatters: [ExUnit.CLIFormatter, ExUnitNotifier])
ExUnit.start()
