defmodule PhoenixTodoAppWeb.TodosController do
  use PhoenixTodoAppWeb, :controller

  def index(conn, params) do
    todo_items = find_todo_items()

    todo_items =
    if params["status"] do
      todo_items
      |> Enum.filter(fn item -> item.status == String.to_integer(params["status"]) end)
    else
      todo_items
    end

    conn
    |> assign(:todo_items, todo_items)
    |> render("index.html")
  end

  defp find_todo_items do
    [
      %{title: "Lavar a louça", status: 1},
      %{title: "Fazer a janta", status: 1},
      %{title: "Alimentar os gatos", status: 0},
      %{title: "Ligar o carro", status: 1}
    ]
  end
end
