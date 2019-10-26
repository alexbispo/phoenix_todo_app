defmodule PhoenixTodoAppWeb.TasksController do
  use PhoenixTodoAppWeb, :controller

  alias PhoenixTodoApp.Tasks

  def index(conn, params) do
    tasks =
    if params["status"] do
      Tasks.list_by_status(params["status"])
    else
      Tasks.list
    end

    conn
    |> assign(:tasks, tasks)
    |> render("index.html")
  end
end
