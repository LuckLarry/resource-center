class Currency < ActiveRecord::Base
  has_many :price_management
end
