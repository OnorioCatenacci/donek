defmodule DonekWeb.PageController do
  use DonekWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
