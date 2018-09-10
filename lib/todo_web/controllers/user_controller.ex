defmodule TodoWeb.UserController do
    use TodoWeb, :controller
    alias Todo.User 
    alias Todo.Repo

    def index(conn, _params) do 
        users = Repo.all(User) 
        render(conn, "index.html", users: users)
    end
end