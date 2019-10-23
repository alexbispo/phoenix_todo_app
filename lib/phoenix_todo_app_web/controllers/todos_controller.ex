defmodule PhoenixTodoAppWeb.TodosController do
  use PhoenixTodoAppWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:todo_list, [%{title: "Lavar a louça"}, %{title: "Fazer a janta"}, %{title: "Alimentar os gatos"}])
    |> render("index.html")
  end
end
