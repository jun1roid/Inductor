# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    [
      {
        name: "Soushi Yamamoto",
        username: "soushiy",
        location: "Tokyo",
        about: "私はそうしです。",
        email: "test@gmail.com",
        password:  "111111"
      },
      {
        name: "Taro Tanaka",
        username: "taro",
        location: "Tokyo",
        about: "私はタロウです。",
        email: "test2@gmail.com",
        password:  "111111"
      }
    ]
)