class Pic < ApplicationRecord
  mount_base64_uploader :photo, PhotoUploader
end
