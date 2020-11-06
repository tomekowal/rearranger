defmodule RearrangerWeb.RearrangerLiveTest do
  use RearrangerWeb.ConnCase

  test "on load renders that string1 can be rearranged into string2", %{conn: conn} do
    {:ok, _view, html} = live(conn, "/")
    assert html =~ "can"
  end

  test "renders that string1 can not be rearranged into string2 given different characters", %{conn: conn} do
    params = %{
      string1: "a",
      string2: "b"
    }
    {:ok, view, _html} = live(conn, "/")
    assert render_change(view, :check_rearrangement, params) =~ "can not"
  end
end
