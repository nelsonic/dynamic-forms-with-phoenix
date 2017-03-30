defmodule YourApp.UserTest do
  use YourApp.ModelCase

  alias YourApp.User

  @valid_attrs %{address: "some content", date_of_birth: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, name: "some content", notifications_enabled: true, number_of_children: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
