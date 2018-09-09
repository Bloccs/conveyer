defmodule ConveyerTest do
  use ExUnit.Case, async: true

  test "this module should not implement any functions" do
    assert(Conveyer.__info__(:functions) == [])
  end
end
