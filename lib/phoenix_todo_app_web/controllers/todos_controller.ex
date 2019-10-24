defmodule PhoenixTodoAppWeb.TodosController do
  use PhoenixTodoAppWeb, :controller

  def index(conn, _params) do
    todos = find_todos()
    conn
    |> assign(:todo_list, todos)
    |> render("index.html")
  end

  defp find_todos do
    [
      %{title: "Lavar a louça", status: 0},
      %{title: "Fazer a janta", status: 0},
      %{title: "Alimentar os gatos", status: 0},
      %{title: "Ligar o carro", status: 0}
    ]
  end
end
