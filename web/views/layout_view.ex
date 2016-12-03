defmodule Kobrakai.LayoutView do
  use Kobrakai.Web, :view

  def render_title(conn) do
    case Map.get(conn.assigns, :title) do
      nil -> "Benjamin Milde"
      title -> "#{title} &mdash; Benjamin Milde"
    end
  end
end
