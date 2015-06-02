class Manga < ActiveRecord::Base
  validates :title, presence: true
end
