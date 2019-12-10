defmodule PhoenixTodoAppWeb.TasksView do
  use PhoenixTodoAppWeb, :view

  alias PhoenixTodoAppWeb.Router.Helpers, as: Routes

  def format_status(0), do: "Pendente"
  def format_status(1), do: "Feito"
end
