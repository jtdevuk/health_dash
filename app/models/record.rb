class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :letter

  def self.filter(term)
    if term
      Record.where(category: term)
    else
      Record.all
    end
  end
end
