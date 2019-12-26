class Tweet < ApplicationRecord
    mount_uploader :video, VideoUploader
end
