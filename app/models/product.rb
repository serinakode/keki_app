class Product < ApplicationRecord
    belongs_to :user
    include ImageUploader::Attachment.new(:image)

    has_many :orders

    reverse_geocoded_by "profiles.latitude", "profiles.longitude"

    def self.cakes_near(address)
        # return cakes nearby
        products = Product.joins(:user, user: :profile)
        products.near(address)
    end
end