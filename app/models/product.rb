class Product < ApplicationRecord
    belongs_to :user
    include ImageUploader::Attachment.new(:image)


    def self.cakes_near(address)
        # return cakes nearby
    end
end
