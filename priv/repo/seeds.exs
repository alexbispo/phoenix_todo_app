# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixTodoApp.Repo.insert!(%PhoenixTodoApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

PhoenixTodoApp.Repo.insert!(%PhoenixTodoApp.Task{title: "Lavar a louça", status: 1})
PhoenixTodoApp.Repo.insert!(%PhoenixTodoApp.Task{title: "Lavar o banheiro"})
PhoenixTodoApp.Repo.insert!(%PhoenixTodoApp.Task{title: "Ir ao mercado"})
PhoenixTodoApp.Repo.insert!(%PhoenixTodoApp.Task{title: "Lavar roupa", status: 1})
