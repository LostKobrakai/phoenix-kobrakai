defmodule Kobrakai.Router do
  use Kobrakai.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
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
end
