defmodule LighthouseWeb.PageControllerTest do
  use LighthouseWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "lighthouse"
  end
end
