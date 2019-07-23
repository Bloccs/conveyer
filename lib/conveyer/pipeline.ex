defmodule Conveyer.Pipeline do
  @moduledoc """
  Defines the macros and functions for pipeline creation.

  A pipeline consists of a single entry point function followed by a collection of stages that are executed in sequential order. An example of a simple pipeline:

      defmodule MathPipeline do
        use Conveyer.Pipeline

      end

  Pipeline are intended to always return a tagged tuple `{:ok, value}` or `{:error, error}`. In the later case a stage returning an error tuple will halt the pipeline executing and trigger the exception handling.

  The error value is a `Conveyor.BlockError` type struct and contains useful information to detect the root cause of the error.

  """
end
