# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Conversation.destroy_all
User.destroy_all
Message.destroy_all
StockPurchase.destroy_all
Conversation.reset_pk_sequence
User.reset_pk_sequence
StockPurchase.reset_pk_sequence
Message.reset_pk_sequence

