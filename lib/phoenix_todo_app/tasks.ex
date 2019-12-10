defmodule PhoenixTodoApp.Tasks do
  @moduledoc """
  The Tasks context.
  """

  import Ecto.Query, warn: false
  alias PhoenixTodoApp.Repo

  alias PhoenixTodoApp.Task

  @doc """
  Returns the list of tasks.

  ## Examples

      iex> list()
      [%Task{}, ...]

  """
  def list do
    Repo.all(Task)
  end

  def list_by_status(status) do
    Repo.all(from t in Task, where: t.status == ^status)
  end

  def get(id) do
    Repo.get(Task, id)
  end

  def update(task, attrs) do
    changes = Task.changeset(task, attrs)
    Repo.update(changes)
  end
end
