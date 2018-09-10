defmodule Todo.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email,         :string
    field :password,      :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end
