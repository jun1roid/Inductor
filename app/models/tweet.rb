class Tweet < ApplicationRecord
    belongs_to :user, optional: true
    # mount_uploader :video, VideoUploader
end
