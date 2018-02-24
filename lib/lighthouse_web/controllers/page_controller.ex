defmodule LighthouseWeb.PageController do
  use LighthouseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
