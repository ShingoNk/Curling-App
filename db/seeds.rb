# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(uname: "管理者",
            email: "shingo1113@icloud.com",
            uage: "22",
            uyoe: "0",
            uhole: "軽井沢アイスパーク",
            uassoci: "東京",
            ufrequ: "週1回",
            password: "geekapp",
            password_confirmation: "geekapp",
            admin: true)

