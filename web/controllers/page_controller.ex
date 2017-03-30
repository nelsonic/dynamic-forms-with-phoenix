defmodule YourApp.PageController do
  use YourApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
