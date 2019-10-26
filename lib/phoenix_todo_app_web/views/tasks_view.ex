defmodule PhoenixTodoAppWeb.TasksView do
  use PhoenixTodoAppWeb, :view

  def format_status(0), do: "Pendente"
  def format_status(1), do: "Feito"
end
