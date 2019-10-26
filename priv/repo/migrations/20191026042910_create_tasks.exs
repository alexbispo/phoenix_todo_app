defmodule PhoenixTodoApp.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string, null: false
      add :status, :integer, default: 0, null: false

      timestamps()
    end

  end
end
