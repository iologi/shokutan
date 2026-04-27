# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
foods = [
  {
    name: "ハラミ",
    rarity: "common",
    image_url: "foods/harami.jpg",
    description: "横隔膜の腹側で、柔らかく適度に脂肪がある。",
    category_id: 1
  },
  {
    name: "サガリ",
    rarity: "common",
    image_url: "foods/sagari.jpg",
    description: "横隔膜の腰椎に近い部分で脂身がなく、あっさりしていてスジが少なく柔らかい。",
    category_id: 1
  },
  {
    name: "ランプ",
    rarity: "common",
    image_url: "foods/rump.jpg",
    description: "もも肉の中でも柔らかく、味に深みがある。",
    category_id: 1
  },
  {
    name: "イチボ",
    rarity: "common",
    image_url: "foods/ichibo.jpg",
    description: "臀部の骨周りに位置する部位で、赤身と脂のバランスが良い。",
    category_id: 1
  },
  {
    name: "フランク（ササミ）",
    rarity: "rare",
    image_url: "foods/frank.jpg",
    description: "肉質はきめが細かく柔らかい。",
    category_id: 1
  },
  {
    name: "ミスジ",
    rarity: "rare",
    image_url: "foods/misuji.jpg",
    description: "霜降りが美しく柔らかい。",
    category_id: 1
  },
  {
    name: "トモサンカク",
    rarity: "rare",
    image_url: "foods/tomo-sankaku.jpg",
    description: "霜降りがしっかり入り、赤身の旨味も楽しめる。",
    category_id: 1
  },
  {
    name: "カイノミ",
    rarity: "rare",
    image_url: "foods/kainomi.jpg",
    description: "ヒレのような柔らかさと脂の旨みがある。",
    category_id: 1
  },
  {
    name: "ザブトン（ハネシタ）",
    rarity: "rare",
    image_url: "foods/zabuton.jpg",
    description: "全体に美しいサシが入り、濃厚でとろける味わい。",
    category_id: 1
  },
  {
    name: "シンシン（マルシン）",
    rarity: "epic",
    image_url: "foods/shinshin.jpg",
    description: "きめ細かく濃厚で柔らかな赤身。",
    category_id: 1
  },
  {
    name: "トンビ（トウガラシ）",
    rarity: "epic",
    image_url: "foods/tonbi.jpg",
    description: "旨味が強く、形が唐辛子に似ている。",
    category_id: 1
  }
]

foods.each do |data|
  Food.find_or_create_by(name: data[:name]) do |record|
    record.rarity = data[:rarity]
    record.image_url = data[:image_url]
    record.description = data[:description]
    record.category_id = data[:category_id]
  end
end
