# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

episodes = Episode.create(title:'podcast', description: 'blahblahblahablha', runtime_in_minutes: 90, release_date: DateTime.now, avatar_file_name: 'woteva', avatar_file_size: 3, avatar_updated_at: DateTime.now, track_file_name: 'wotevas', track_content_type: 'wotevaz', track_file_size: 2, track_updated_at: DateTime.now, type: 'vita')

episodes = Episode.create(title:'podcast', description: 'blahblahblahablha', runtime_in_minutes: 90, release_date: DateTime.now, avatar_file_name: 'woteva', avatar_file_size: 3, avatar_updated_at: DateTime.now, track_file_name: 'wotevas', track_content_type: 'wotevaz', track_file_size: 2, track_updated_at: DateTime.now, type: 'SFNAPCPS')

admin = Admin.create(email:'me@me.ca', password: 'hodgehodge', password_confirmation: 'hodgehodge')