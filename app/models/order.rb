class Order < ActiveRecord::Base
  mount_uploader :image_name, ImageUploader
end
