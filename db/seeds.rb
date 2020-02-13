# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
user1 = User.create(username: "admin", email: "admin@shalva.io", password: "password")
user2 = User.create(email: "two@shalva.io" , username: "Shalva" , password: "pass1")
user3 = User.create(email: "three@shalva.io" , username: "Ramzay" , password: "ramzay1")
user4 = User.create(email: "four@shalva.io" , username: "Cindy" , password: "cindy1")
user5 = User.create(email: "five@shalva.io" , username: "Miles" , password: "miles1")
user6 = User.create(email: "six@shalva.io" , username: "Eddie" , password: "eddie1")
user7 = User.create(email: "seven@shalva.io" , username: "Filip" , password: "filip1")
user8 = User.create(email: "eight@shalva.io" , username: "Adam" , password: "adam1")
user9 = User.create(email: "nine@shalva.io" , username: "Kate" , password: "kate1")
user10 = User.create(email: "ten@shalva.io" , username: "Kent" , password: "kent1")


#Pictures

picture1 = Picture.create(image_url: "https://cdn2-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg", title: "PUPPYY!", user_id: 2)
picture2 = Picture.create(image_url: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12193133/German-Shepherd-Puppy-Fetch.jpg", title: "German Shepherd Boii", user_id: 2)
picture3 = Picture.create(image_url: "https://snworksceo.imgix.net/dtc/10ec0a64-8f9d-46d9-acee-5ef9094d229d.sized-1000x1000.jpg", title: "So dignified", user_id: 3)
picture4 = Picture.create(image_url: "https://cdn.akc.org/content/article-body-image/siberian_husky_cute_puppies.jpg", title: "Huskiii", user_id: 4)
picture5 = Picture.create(image_url: "https://www.readersdigest.ca/wp-content/uploads/sites/14/2013/03/6-facts-to-know-before-owning-a-puppy.jpg", title: "Asleep d'awwwg", user_id: 5)
picture6 = Picture.create(image_url: "https://www.sadanduseless.com/wp-content/uploads/2018/11/mean-puppy2.jpg", title: "Hard truth", user_id: 6)
picture7 = Picture.create(image_url: "https://i.dailymail.co.uk/1s/2019/12/18/14/22403936-7805893-image-a-1_1576680786169.jpg", title: "Lady and the...", user_id: 7)
picture9 = Picture.create(image_url: "https://resize.hswstatic.com/w_907/gif/now-aae3b57b-87c8-4d34-b97a-7f72963e90e9-1210-680.jpg", title: "Surrounded by flowers", user_id: 8)
picture10 = Picture.create(image_url: "https://resize.hswstatic.com/w_640/gif/now-75dae48b-08d4-4958-8342-33106c40a114-640-502.jpg", title: "looking like a snack", user_id: 9)
picture11 = Picture.create(image_url: "https://resize.hswstatic.com/w_640/gif/now-50761911-2d7c-4bc0-ba54-c6750165ee7c-640-411.jpg", title: "Matchig outfits", user_id: 10)
picture12 = Picture.create(image_url: "https://resize.hswstatic.com/w_640/gif/now-0b96a5d2-612f-45b2-ae64-70c5e304e4d9-640-442.jpg", title: "Corgi corgi corgi", user_id: 3)
picture13 = Picture.create(image_url: "https://www.rd.com/wp-content/uploads/2018/02/08_Adorable-Puppy-Pictures-that-Will-Make-You-Melt_719179630_otsphoto-760x506.jpg", title: "Holloween Treat", user_id: 5)


#Tags

happy= Tag.create(name: "happy")
sad= Tag.create(name: "sad")
angry= Tag.create(name: "angry")
travel = Tag.create(name: "travel")
brunch = Tag.create(name: "brunch")
crazy= Tag.create(name: "crazy")
beautiful= Tag.create(name: "beautiful")
nature= Tag.create(name: "nature")


#Followers

follow_1 = Following.create(followed_id: 1, follower_id: 2)
follow_2 = Following.create(followed_id: 1, follower_id: 4)
follow_3 = Following.create(followed_id: 1, follower_id: 5)
follow_1 = Following.create(followed_id: 1, follower_id: 6)

#Following

following_1 = Following.create(followed_id: 2, follower_id: 1)
following_1 = Following.create(followed_id: 4, follower_id: 1)
following_1 = Following.create(followed_id: 5, follower_id: 1)