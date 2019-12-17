defmodule PhoenixTodoAppWeb.TasksController do
  use PhoenixTodoAppWeb, :controller

  alias PhoenixTodoApp.Tasks

  def index(conn, params) do
    tasks =
      if params["status"] do
        Tasks.list_by_status(params["status"])
      else
        Tasks.list()
      end

    conn
    |> assign(:tasks, tasks)
    |> render("index.html")
  end

  def done(conn, %{"id" => id}) do
    task = Tasks.get(id)
    Tasks.update(task, %{status: 1})

    tasks = Tasks.list()

    conn
    |> assign(:tasks, tasks)
    |> render("index.html")
  end

  def undone(conn, %{"id" => id}) do
    task = Tasks.get(id)
    Tasks.update(task, %{status: 0})

    tasks = Tasks.list()

    conn
    |> assign(:tasks, tasks)
    |> render("index.html")
  end
end
