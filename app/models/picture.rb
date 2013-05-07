class Picture < ActiveRecord::Base
  attr_accessible :description, :image, :image_processing, :image_tmp, :name

  mount_uploader :image, PictureUploader
  store_in_background :image

  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      # "name" => read_attribute(:name),
      "description" => read_attribute(:description),
      # "size" => read_attribute(:upload_file_size),
      "url" => read_attribute(:image),
      "delete_url" => picture_path(self),
      "delete_type" => "DELETE" 
    }
  end
end
