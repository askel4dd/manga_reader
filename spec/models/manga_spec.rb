require 'rails_helper'

RSpec.describe Manga, type: :model do
  before do
    @manga = Manga.new(title: "Gantz",
                      author_list: "Hiroya Oku",
                      genre_list: "Horror",
                      chapters: "123")
  end

  subject { @manga }

  describe "when title is not present" do
    before { @manga.title = " " }
    it { should_not be_valid }
  end
end
