class Order < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
