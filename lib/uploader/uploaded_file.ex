defmodule Uploader.UploadedFile do

  def save(%{filename: filename, path: path}) do
    upload_dir = Application.get_env(:uploader, :upload_dir)
    IO.inspect upload_dir
    ""
  end

end
