class Category < ActiveRecord::Base
  has_many :packageinfos
end
