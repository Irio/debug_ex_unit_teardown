defmodule PortalTest do
  use ExUnit.Case

  test "transfer: push data into left struct" do
    Portal.shoot(:orange)
    Portal.shoot(:blue)
    Portal.transfer(:orange, :blue, [1])
    assert [1] == Portal.Door.get(:orange)
    assert [] == Portal.Door.get(:blue)
  end

  test "existent value" do
    assert [1] == Portal.Door.get(:orange)
  end
end
