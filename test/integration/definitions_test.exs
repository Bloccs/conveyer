defmodule ConveyerTest.DefinitionsTest do
  @moduledoc false
  use ExUnit.Case


  test "there is a base error block defined" do
    assert(Code.ensure_compiled?(Conveyer.Errors.BlockError) === true)
  end

  test "there is a base phase block defined" do
    assert(Code.ensure_compiled?(Conveyer.Types.PhaseBlock) === true)
  end

end
