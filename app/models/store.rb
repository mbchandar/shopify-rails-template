class Store < ActiveRecord::Base
  validates :provider, length: { maximum: 40 }
  validates :url, length: { maximum: 255 }, uniqueness: true
  validates :access_token, length: { maximum: 255 }
end
