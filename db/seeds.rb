# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channel_data = [
  {
    chennel: { name: "&TV" },
    tv_shows: [
      {
        name: "Bhabhi Ji Ghar Par Hai!",
        show_time: "08:00 PM",
      },
      {
        name: "Gudiya Hamari Sabhi Pe Bhari",
        show_time: "08:30 PM",
      },
      {
        name: "Happu Ki Ultan Pultan",
        show_time: "09:00 PM",
      }
    ]
  },
  {
    chennel: { name: "Colors TV" },
    tv_shows: [
      {
        name: "Shakti - Astitva Ke Ehsaas Ki",
        show_time: "08:00 PM",
      },
      {
        name: "Bahu Begum",
        show_time: "08:30 PM",
      },
      {
        name: "Bepanah Pyaar",
        show_time: "09:00 PM",
      }
    ]
  },
  {
    chennel: { name: "Sony Entertainment Television" },
    tv_shows: [
      {
        name: "Crime Patrol",
        show_time: "08:00 PM",
      },
      {
        name: "Ishaaron Ishaaron Mein",
        show_time: "08:30 PM",
      },
      {
        name: "Patiala Babes",
        show_time: "09:00 PM",
      }
    ]
  }
]

# Create a sample User.
if User.none?
  User.create!(email: "demo_user@mailinator.com", password: "123456", password_confirmation: "123456")
end

# Create channels and their TV shows.
channel_data.each do |data|
  channel = Channel.find_or_create_by!(data[:chennel])

  data[:tv_shows].each do |tv_show_data|
    channel.tv_shows.find_or_create_by!(tv_show_data)
  end
end
