# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Sydney")

Day.create(name:"Monday", user_id:1)
Day.create(name:"Tuesday", user_id:1)
Day.create(name:"Wednesday", user_id:1)
Day.create(name:"Thursday", user_id:1)
Day.create(name:"Friday", user_id:1)
Day.create(name:"Saturday", user_id:1)
Day.create(name:"Sunday", user_id:1)

Food.create(name:"Mac n Cheese Lunch", day_id:1, calories:500)
Food.create(name:"Mac n Cheese Dinner", day_id:1, calories:500)
Food.create(name:"almond butter toast", day_id:2, calories:500)
Food.create(name:"poke", day_id:2, calories:500)
Food.create(name:"salad", day_id:3, calories:500)
Food.create(name:"salad", day_id:4, calories:500)
Food.create(name:"salad", day_id:5, calories:500)
Food.create(name:"salad", day_id:6, calories:500)
Food.create(name:"nothing", day_id:7, calories:500)
