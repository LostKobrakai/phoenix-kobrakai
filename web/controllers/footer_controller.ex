defmodule Kobrakai.FooterController do
  use Kobrakai.Web, :controller


  def contact(conn, _params) do
    render conn, "contact.html", title: "Kontakt"
  end

  def imprint(conn, _params) do
    render conn, "imprint.html", title: "Impressum"
  end
end
