ActsAsTaggableOn::Tag.delete_all
ActsAsTaggableOn::Tag.create!([
  { name: "Horror" },
  { name: "Action" },
  { name: "Hiroya Oku" },
  { name: "Masashi Kishimoto" },
  { name: "Makoto Yukimura" }
])
Manga.delete_all
Manga.create!([
  { title: "Gantz",
    genre_list: ["Horror"],
    author_list: ["Hiroya Oku"],
    chapters: "123"
  },
  { title: "Naruto",
    genre_list: ["Action"],
    author_list: ["Masashi Kishimoto"],
    chapters: "123"
  },
  { title: "Vinland Saga",
    genre_list: ["Action"],
    author_list: ["Makoto Yukimura"],
    chapters: "123"
  }
])
