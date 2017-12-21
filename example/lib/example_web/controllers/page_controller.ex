defmodule ExampleWeb.PageController do
  use ExampleWeb, :controller
  import PhoenixGon.Controller


  def index(conn, _params) do
    conn = put_gon(conn, content: "</script><script>alert('this is an alert')</script>")
    render conn, "index.html"
  end
end
