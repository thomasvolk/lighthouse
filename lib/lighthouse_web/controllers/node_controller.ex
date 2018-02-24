defmodule LighthouseWeb.NodeController do
  use LighthouseWeb, :controller

  def nodes(conn, _params) do
    nodes = Lightbulb.get_nodes() |> Enum.map(fn {ip, data} -> [ Lightbulb.IpAddress.to_string(ip), data ] end)
    table_data = %{
      recordsTotal: length(nodes),
      recordsFiltered:  length(nodes),
      data: nodes
    }
    json conn, table_data
  end

end
