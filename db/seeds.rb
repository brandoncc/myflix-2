# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(name: 'TV Comedies')
c2 = Category.create(name: 'TV Dramas')

# Video.create(title: 'Monk',
#                   description: "Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way.",
#                   small_cover_url: "monk.jpg",
#                   large_cover_url: "monk_large.jpg",
#                   category: c2)
#
# Video.create(title: 'South Park',
#                   description: "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
#                   small_cover_url: "south_park.jpg",
#                   large_cover_url: "south_park_large.jpg",
#                   category: c1)
#
# Video.create(title: 'Family Guy',
#                   description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another.",
#                   small_cover_url: "family_guy.jpg",
#                   large_cover_url: "family_guy_large.jpg",
#                   category: c1)
#
# Video.create(title: 'Monk',
#                   description: "Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way.",
#                   small_cover_url: "monk.jpg",
#                   large_cover_url: "monk_large.jpg",
#                   category: c2)
#
# Video.create(title: 'South Park',
#                   description: "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
#                   small_cover_url: "south_park.jpg",
#                   large_cover_url: "south_park_large.jpg",
#                   category: c1)
#
# Video.create(title: 'Family Guy',
#                   description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another.",
#                   small_cover_url: "family_guy.jpg",
#                   large_cover_url: "family_guy_large.jpg",
#                   category: c1)
#
# Video.create(title: 'Monk',
#                   description: "Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way.",
#                   small_cover_url: "monk.jpg",
#                   large_cover_url: "monk_large.jpg",
#                   category: c2)
#
# Video.create(title: 'South Park',
#                   description: "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
#                   small_cover_url: "south_park.jpg",
#                   large_cover_url: "south_park_large.jpg",
#                   category: c1)
#
# family_guy = Video.create(title: 'Family Guy',
#                   description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another.",
#                   small_cover_url: "family_guy.jpg",
#                   large_cover_url: "family_guy_large.jpg",
#                   category: c1)
#
# futurama = Video.create(title: 'Futurama',
#                   description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
#                   small_cover_url: "futurama.jpg",
#                   large_cover_url: "futurama_large.jpg",
#                   category: c1)

alex = User.create(full_name: "Alex Henegar", password: "password", email: "alex@example.com", admin: true)
bob = User.create(full_name: "Bob Henegar", password: "password", email: "bob@example.com")
alice = User.create(full_name: "Alice Henegar", password: "password", email: "alice@example.com")
charlie = User.create(full_name: "Charlie Henegar", password: "password", email: "charlie@example.com")

Relationship.create(leader: bob, follower: alex)

# Fabricate.times(20, :review) do
#   user { User.all.sample }
#   video { Video.all.sample }
# end
# Review.create(user: alex, video: futurama, rating: 5, content: "This show is the best!")
# Review.create(user: alex, video: family_guy, rating: 2, content: "This show could use some work.")

# QueueItem.create(user: alex, video: futurama, position: 1)
# QueueItem.create(user: alex, video: family_guy, position: 2)
