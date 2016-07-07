defmodule Uploader.UploadsControllerTest do
  use Uploader.ConnCase

  test "POST /uploads", %{conn: conn} do
    file = %Plug.Upload{path: "test/fixtures/file.jpg", filename: "test_file.jpg"}
    conn = post(conn, "/uploads", %{upload: file})
    assert text_response(conn, 201) == "fixme"
  end

end
