# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brian = User.create(name: "Brian Anderson",
                email: "brian@bitbyteyum.com")

d = Document.create(name: "ATP 96",
                    content: "")

d.users << brian

a = Audio.create(name: "ATP 96",
                 url: "http://traffic.libsyn.com/atpfm/atp96.mp3",
                 mime_type: "audio/mp3")

d.audio = a

d.save!