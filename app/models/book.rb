class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 3000)}
end
