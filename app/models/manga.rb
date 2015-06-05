class Manga < ActiveRecord::Base
  validates :title, presence: true
  acts_as_taggable_on :authors, :genres
end
