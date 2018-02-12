defmodule HelloWeb.HelloController do
	use HelloWeb, :controller

	def index(conn, _params) do
		render conn, "index.html"
	end
	def show(conn, %{"messenger" => messenger, "greeting" => greeting}) do
		render conn, "show.html", messenger: messenger, greeting: String.capitalize(greeting)
	end

	def showDefault(conn, %{"messenger" => messenger}) do
		render conn, "show.html", messenger: messenger, greeting: "Hello"
	end
end