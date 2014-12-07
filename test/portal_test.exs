defmodule PortalTest do
  use ExUnit.Case

  test "transfer: push data into left struct" do
    Portal.shoot(:orange)
    Portal.shoot(:blue)
    Portal.transfer(:orange, :blue, [1])
    assert [1] == Portal.Door.get(:orange)
    assert [] == Portal.Door.get(:blue)
  end

  test "push_right: push head of left into right struct" do
    Portal.shoot(:orange)
    Portal.shoot(:blue)
    portal = Portal.transfer(:orange, :blue, [1])
    Portal.push_right(portal)
    assert [] == Portal.Door.get(:orange)
    assert [1] == Portal.Door.get(:blue)
  end
end
