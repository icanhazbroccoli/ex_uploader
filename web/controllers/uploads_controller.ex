defmodule Uploader.UploadsController do
  use Uploader.Web, :controller
  require Logger

  def index(conn, %{"upload" => uploaded_file}) do
    url = "fixme"
    Logger.debug inspect uploaded_file
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(201, url)
  end

end
