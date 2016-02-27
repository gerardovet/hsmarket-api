class Product < ActiveRecord::Base
  resourcify
  belongs_to :shop
end
