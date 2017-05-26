require "google/cloud/storage"

def upload_file(filename)
  storage = Google::Cloud::Storage.new(
    project: "data-test",
    keyfile: "keyfile.json"
  )

  bucket = storage.bucket "my-cat-pics"
  bucket.create_file(filename, filename)
end

upload_file("data0.csv")
upload_file("script.py")
