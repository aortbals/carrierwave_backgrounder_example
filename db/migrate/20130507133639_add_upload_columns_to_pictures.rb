class AddUploadColumnsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :upload_file_name, :string
    add_column :pictures, :upload_file_size, :string
  end
end
