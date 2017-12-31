defmodule LighthouseServiceWeb.NodeController do
  use LighthouseServiceWeb, :controller

  def nodes(conn, _params) do
    nodes = Lighthouse.get_nodes() |> Enum.map(fn {ip, data} -> [ Lighthouse.IpAddress.to_string(ip), data ] end)
    table_data = %{
      recordsTotal: length(nodes),
      recordsFiltered:  length(nodes),
      data: nodes
    }
    json conn, table_data
  end

end
