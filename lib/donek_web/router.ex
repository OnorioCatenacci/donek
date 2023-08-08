defmodule DonekWeb.Router do
  use DonekWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {DonekWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DonekWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/new_table_definition", NewTableDefinitionLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", DonekWeb do
  #   pipe_through :api
  # end
end
