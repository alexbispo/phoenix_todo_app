defmodule PhoenixTodoAppWeb.TasksView do
  use PhoenixTodoAppWeb, :view

  alias PhoenixTodoApp.Task

  def check_status_style(0), do: "btn-light"
  def check_status_style(1), do: "btn-success active"
end
