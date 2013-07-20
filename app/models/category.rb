class Category < ActiveRecord::Base
  attr_accessible :name, :path
  validates :name, :path, presence: true
  validates :path, uniqueness: true,
  format: { 
    with: %r{\A(\d{0,2}\.){1}(\d{0,2}\.){0,1}(\d{0,2}\.){0,1}(\d{0,2}\.){0,1}\Z}i,
    message: 'must be look likes "1." or "3.1." or "10.2.30.4.".'
  }
end
