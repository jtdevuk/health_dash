class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :letter
end