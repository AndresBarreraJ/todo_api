class Item < ApplicationRecord
  belongs_to :todo
  #validatiom
  validates_presence_of :name
end
