class Tweet < ApplicationRecord

  # Something must be written before it is posted, also must be maximum 280 characters
  validates :post, presence: true, length: {maximum: 280}

end
