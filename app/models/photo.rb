class Photo < ApplicationRecord
	has_one_attached :photo
	belongs_to :album
end
