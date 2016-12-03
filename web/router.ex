defmodule Kobrakai.Router do
  use Kobrakai.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :blank_layout_for_barba
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Kobrakai do
    pipe_through :browser # Use the default browser stack

    get "/", ProjectController, :index
    get "/kontakt", FooterController, :contact
    get "/impressum", FooterController, :imprint
    get "/:slug", ProjectController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Kobrakai do
  #   pipe_through :api
  # end

  defp blank_layout_for_barba(conn, _opts) do
    barba? = 
      conn.req_headers
      |> Enum.find(fn header -> 
        case header do
          {"x-barba", _} -> true
          _ -> false
        end
      end)

    case barba? do
      nil -> conn
      _ -> 
        conn
        |> put_layout(false)
    end
  end
end
