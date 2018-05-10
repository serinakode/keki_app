class Profile < ApplicationRecord
    belongs_to :user
    include ImageUploader::Attachment.new(:image)

    attr_reader :address, :city, :state, :postcode

    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates

    def full_street_address
        "#{address}, #{city}, #{state}, #{postcode}"
    end
end
