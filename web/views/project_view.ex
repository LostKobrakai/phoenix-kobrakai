defmodule Kobrakai.ProjectView do
  use Kobrakai.Web, :view
  use Timex

  def render_aside(item) do
    render "aside_#{item.type}.html", item: item
  end
end
