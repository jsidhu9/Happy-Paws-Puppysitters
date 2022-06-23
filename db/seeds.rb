# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing db..."
Appointment.destroy_all
Client.destroy_all
Sitter.destroy_all
Pet.destroy_all

puts "Making clients👤..."
Client.create(
    username:'User1', 
    password:'password', 
    fullname:'Santa Claus', 
    image: "https://img.freepik.com/free-vector/santa-claus-with-sack-gifts_160606-82.jpg?w=2000", 
    address:'The North Pole, Earth',
    number:"1-800-GET-GIFT",
    admin:true
)

Client.create(
    username:'User2', 
    password:'pass', 
    fullname:'Danny Phantom', 
    image: "https://static.wikia.nocookie.net/heroes-and-villain/images/f/f6/Profile_-_Danny_Phantom.png/revision/latest?cb=20210715021259", 
    address:'The Astral Plane',
    number:"1-800-123-4567"
)

# Client.create(
#     username:'Admin', 
#     password:'password', 
#     fullname:'Administrator', 
#     image: "https://images.pexels.com/photos/733658/pexels-photo-733658.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", 
#     address:'351 Farmington Ave., Hartford, Conn. 06105',
#     number:"618-625-8313",
#     admin:true
# )

Client.create(
    username:'petluver444', 
    password:'password', 
    fullname:'Tiger King', 
    image: "https://cdn.vox-cdn.com/thumbor/PsOKyjMmSoEasj317Kiil_cbnXM=/1400x1050/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/19895837/TigerKingAndI.png", 
    address:'42 Wallaby Way, Sydney, Austraulia, 2022',
    number:"605-475-6961"
)

# Client.create(
#     username:'g@dz!lla', 
#     password:'password', 
#     fullname:'Dr. Doolittle', 
#     image: "https://images.pexels.com/photos/162318/cheetahs-cubs-two-together-162318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", 
#     address:'350 Fifth Avenue, New York City, NY 10118',
#     number:"844-435-7387"
# )

puts "Making sitters👤..."
Sitter.create(
    name: "Batman",
    image: "https://www.dccomics.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg", 
    phone_number: "1-800-JUSTICE", 
    email: "batman@gmail.com", 
    bio: "Catching bad guys", 
    availability: true
)

Sitter.create(
    name: "Superman",
    image: "https://static.wikia.nocookie.net/marvel_dc/images/a/a5/Superman_Vol_5_1_Textless.jpg/revision/latest?cb=20180711061148", 
    phone_number: Faker::PhoneNumber.unique.cell_phone, 
    email: Faker::Internet.unique.email, 
    bio: Faker::Lorem.paragraph(sentence_count: 7), 
    availability: true
)

Sitter.create(
    name: "Luke S.",
    image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2d376770-abbd-4961-a68a-fa31c8214f3b/dd66pql-97cc9710-c540-4ffa-aa0d-38550cc831c5.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzJkMzc2NzcwLWFiYmQtNDk2MS1hNjhhLWZhMzFjODIxNGYzYlwvZGQ2NnBxbC05N2NjOTcxMC1jNTQwLTRmZmEtYWEwZC0zODU1MGNjODMxYzUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.-24_G84I28HDoGabmo2JJDmWT82uKqMjEvaTZ4JhOIU", 
    phone_number: Faker::PhoneNumber.unique.cell_phone, 
    email: Faker::Internet.unique.email, 
    bio: Faker::Lorem.paragraph(sentence_count: 4), 
    availability: true
)

Sitter.create(
    name: "Goku",
    image: "https://japanpowered.com/media/images//goku.png", 
    phone_number: Faker::PhoneNumber.unique.cell_phone, 
    email: Faker::Internet.unique.email, 
    bio: Faker::Lorem.paragraph(sentence_count: 4), 
    availability: true
)

# Sitter.create(
#     name: "Dakota F.",
#     image: "https://images.pexels.com/photos/6002007/pexels-photo-6002007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 5), 
#     availability: true
# )

# Sitter.create(
#     name: "Bailey D.",
#     image: "https://images.pexels.com/photos/5749807/pexels-photo-5749807.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 5), 
#     availability: true
# )

# Sitter.create(
#     name: "Alex R.",
#     image: "https://images.pexels.com/photos/2403104/pexels-photo-2403104.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 5), 
#     availability: true
# )

# Sitter.create(
#     name: "Lynn K.",
#     image: "https://images.pexels.com/photos/9783903/pexels-photo-9783903.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 5), 
#     availability: true
# )

# Sitter.create(
#     name: "Dana P.",
#     image: "https://images.pexels.com/photos/9083446/pexels-photo-9083446.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 5), 
#     availability: true
# )

# Sitter.create(
#     name: "Meg T.",
#     image: "https://images.pexels.com/photos/1612846/pexels-photo-1612846.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", 
#     phone_number: Faker::PhoneNumber.unique.cell_phone, 
#     email: Faker::Internet.unique.email, 
#     bio: Faker::Lorem.paragraph(sentence_count: 9), 
#     availability: true
# )

puts "Making pets🐶🐱🐰..."

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Rottweiler", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://s36700.pcdn.co/wp-content/uploads/2015/05/shutterstock_219143260.jpg.optimal.jpg",
    client_id: Client.ids.sample
)

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Golden Retriever", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://vetstreet.brightspotcdn.com/dims4/default/21dc2d6/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F9f%2F9b%2F6ff000df4e4d8e8c70608cf6e0f5%2Fgolden-retriever-ap-0johoo-645.jpg",
    client_id: Client.ids.sample
)

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Husky", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://www.loveyourdog.com/wp-content/uploads/2020/04/Siberian-Husky-in-Snow.jpg",
    client_id: Client.ids.sample
)    

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Yorkie", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://a-z-animals.com/media/2021/08/Yorkshire-Terrier.jpg",
    client_id: Client.ids.sample
)        

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Cat", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://images.pexels.com/photos/2071873/pexels-photo-2071873.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    client_id: Client.ids.sample
)    

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Dog", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://images.pexels.com/photos/220938/pexels-photo-220938.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    client_id: Client.ids.sample
)    

Pet.create(
    name: Faker::FunnyName.name, 
    species: "Tiger", 
    meds: Faker::Lorem.sentence(word_count: 7), 
    fears: Faker::Lorem.sentence(word_count: 4), 
    likes: Faker::Lorem.sentence(word_count: 3), 
    image: "https://www.refinery29.com/images/10729072.jpg",
    client_id: Client.ids.sample
)        

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Frog", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/674318/pexels-photo-674318.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )        

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Camel", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/3015884/pexels-photo-3015884.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Dog", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/825947/pexels-photo-825947.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )            

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Sheep", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/6152108/pexels-photo-6152108.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Dog", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )            

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Fish", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/3234841/pexels-photo-3234841.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Chameleon", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/62289/yemen-chameleon-chamaeleo-calyptratus-chameleon-reptile-62289.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                    

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Cat", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/1741205/pexels-photo-1741205.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Bunny", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/326012/pexels-photo-326012.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                    

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Dog", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )            

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Monkey", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/1670413/pexels-photo-1670413.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                    

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Tiger", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/572861/pexels-photo-572861.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                    

# Pet.create(
#     name: Faker::FunnyName.name, 
#     species: "Chicken", 
#     meds: Faker::Lorem.sentence(word_count: 7), 
#     fears: Faker::Lorem.sentence(word_count: 4), 
#     likes: Faker::Lorem.sentence(word_count: 3), 
#     image: "https://images.pexels.com/photos/1405930/pexels-photo-1405930.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
#     client_id: Client.ids.sample
# )                    


puts "Making appointments🗒..."
Appointment.create(
    title: "Santa Claus",
    appt_start: "2022-05-05T16:00:00.000Z",
    appt_end: "2022-05-09T09:47:00.000Z",
    petcare: "fdfdf", 
    client_id: Client.ids.sample,
    sitter_id: Sitter.ids.sample)


Appointment.create(
    title: "Danny Phantom",
    appt_start: "2022-05-01T10:36:00.000Z",
    appt_end: "2022-05-02T16:43:00.000Z",
    petcare: Faker::Lorem.paragraph, 
    client_id: Client.ids.sample,
    sitter_id: Sitter.ids.sample)


Appointment.create(
    title: "Tiger King",
    appt_start: "2022-04-24T13:13:00.000Z",
    appt_end: "2022-05-07T09:32:00.000Z",
    petcare: Faker::Lorem.paragraph, 
    client_id: Client.ids.sample,
    sitter_id: Sitter.ids.sample)


# Appointment.create(
#     title: "Rhino",
#     appt_start: "2022-05-04T09:07:00.000Z",
#     appt_end:  "2022-05-11T13:32:00.000Z",
#     petcare: Faker::Lorem.paragraph, 
#     client_id: Client.ids.sample,
#     sitter_id: Sitter.ids.sample)


puts "Done seeding✔️!"