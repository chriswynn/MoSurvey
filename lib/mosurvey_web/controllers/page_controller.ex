defmodule MosurveyWeb.PageController do
  use MosurveyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
