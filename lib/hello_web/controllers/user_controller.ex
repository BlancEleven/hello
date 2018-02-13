defmodule HelloWeb.UserController do
	use HelloWeb, :controller
	
	def new(conn, _params) do
		render conn, "index.html"
	end
end