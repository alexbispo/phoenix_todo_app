defmodule PhoenixTodoAppWeb.TasksController do
  use PhoenixTodoAppWeb, :controller

  alias PhoenixTodoApp.Tasks

  def index(conn, params) do
    # tasks = find_tasks()

    # tasks =
    # if params["status"] do
    #   tasks
    #   |> Enum.filter(fn item -> item.status == String.to_integer(params["status"]) end)
    # else
    #   tasks
    # end

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

  # defp find_tasks do
  #   # [
  #   #   %{title: "Lavar a louça", status: 1},
  #   #   %{title: "Fazer a janta", status: 1},
  #   #   %{title: "Alimentar os gatos", status: 0},
  #   #   %{title: "Ligar o carro", status: 1}
  #   # ]
  #   Repo.all(Task)
  # end
end
