class Manga < ActiveRecord::Base
  include PgSearch
  validates :title, presence: true
  acts_as_taggable_on :authors, :genres

  pg_search_scope :custom_search,
    against: :title,
    associated_against: { authors: :name, genres: :name }
end
