defmodule UploadedFileTest do
  use ExUnit.Case
  import Uploader.UploadedFile

  setup_all do
    path = "test/fixtures/file.jpg"
    filename = "test_file.jpg"
    %{filename: filename, path: path }
  end


  test "Returns a string", context do
    assert is_binary save(context) 
  end


end

