first = User.find_by(email: 'ayaka@lewagon.org')
second = User.find_by(email: 'luke@lewagon.org')

mos = Restaurant.create!(
  name: "Mos Burger",
  address: "Meguro",
  user: first
)

boss = Restaurant.create!(
  name: "Boss Burger",
  address: "Meguro",
  user: second
)


10.times do
  Comment.create!(
    content: "Hello!",
    restaurant: [mos, boss].sample,
    user: [first, second].sample
  )
end
