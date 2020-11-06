defmodule RearrangerWeb.PageController do
  use RearrangerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
