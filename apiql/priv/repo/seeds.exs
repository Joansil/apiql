# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Apiql.Repo.insert!(%Apiql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Apiql.Accounts
alias Apiql.Posts

Accounts.create_user(%{name: "Chico Pankika", email: "chico@mail.com"})
Accounts.create_user(%{name: "Francisco Butiko", email: "butiko@mail.com"})

for _ <- 1..12 do
  Posts.create_post(%{
    title: Faker.Lorem.sentence(),
    body: Faker.Lorem.paragraph(),
    user_id: [1, 2] |> Enum.take_random(1) |> hd
  })
end
