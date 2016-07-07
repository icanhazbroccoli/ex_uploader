defmodule Uploader.Router do
  use Uploader.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug Plug.Parsers,
      parsers: [:urlencoded, :multipart],
      pass: ["*/*"],
      length: 8_000_000,
      read_timeout: 15_000
  end

  scope "/", Uploader do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
  end

  scope "/uploads", Uploader do
    pipe_through :api
    post "/", UploadsController, :index
  end

end
