class Profile < ApplicationRecord
    belongs_to :user
    include ImageUploader::Attachment.new(:image)

    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates

    def full_street_address
        "#{street_address}, #{city}, #{postcode}, #{state}"
    end
end
