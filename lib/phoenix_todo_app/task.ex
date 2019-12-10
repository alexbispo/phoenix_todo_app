defmodule PhoenixTodoApp.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :status, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :status])
    |> validate_required([:title])
  end

  def active?(task) do
    task.status == 1
  end
end
