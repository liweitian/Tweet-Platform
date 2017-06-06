# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
users= [["account1","password1","name1","male"],
       ["account2","password2","name2","female"],
       ["account3","password3","name3","female"],
   	   ["account4","password4","name4","male"],
   	   ["account5","password5","name5","female"],
   	   ["account6","password6","name6","male"],
   	   ["account7","password7","name7","female"],
   	   ["account8","password8","name8","male"]]
users.each do |entry|
	User.create account: entry[0], password: entry[1],name: entry[2],gender: entry[3], headPhoto: "head1"
end

Tweet.delete_all
tweet=["text1","text2","text3","text4","text5","text6","text7","text8","text9"]

tweet.each do |text|
	10.times do |n|
		Tweet.create content: text, time: Time.new.strftime("%m-%d"), user: User.sample
	end
end

Like.delete_all

20.times do |n|
	Like.create user:User.sample, tweet: Tweet.sample
end

Follower.delete_all
20.times do |n|
	id1 = User.sample.id
	id2 = User.sample.id
	if id1 == id2
		id2 = id2 + 1
	end
	Follower.create user_id: id1, following: id2
end

Publisher.delete_all
Publisher.create name: "Times"

news=["news1","news2","news3","news4","news5","news6","news7","news8","news9"]

News.delete_all
news.each do |news|
	News.create publisher_id: Publisher.sample.id, content: news
end

Privatespace.delete_all

User.all.each do |u|
	Privatespace.create user: u, layout: "default"
end

Headphoto.delete_all
Headphoto.create filename: "head1"
Headphoto.create filename: "head2"
Headphoto.create filename: "head3"

Admin.create account: "admin", password: "admin"
