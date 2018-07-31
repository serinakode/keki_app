class Product < ApplicationRecord
    belongs_to :user
    include ImageUploader::Attachment.new(:image)

    has_many :orders

    geocoded_by :address
    after_validation :geocode

    def self.cakes_near(address)
        # return cakes nearby
        products = Product.joins(:user, user: :profile)
        products.near(address)
    end
end