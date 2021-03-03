defmodule ApiqlWeb.PageController do
  use ApiqlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
