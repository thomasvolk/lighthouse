defmodule LighthouseServiceWeb.PageController do
  use LighthouseServiceWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
