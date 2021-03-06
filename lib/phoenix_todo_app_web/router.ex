defmodule PhoenixTodoAppWeb.Router do
  use PhoenixTodoAppWeb, :router

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

  scope "/", PhoenixTodoAppWeb do
    pipe_through :browser

    get "/", TasksController, :index
    post "/done/:id", TasksController, :done
    post "/undone/:id", TasksController, :undone
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixTodoAppWeb do
  #   pipe_through :api
  # end
end
