# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NoteBook.destroy_all
Note.destroy_all
NoteBook.reset_pk_sequence
Note.reset_pk_sequence


nick = User.create(name: 'bob', email: 'bob@gmail.com', password: '123')
jeff = User.create(name: 'nick', email: 'nick@gmail.com', password: '123')
User.create(name: 'pesh', email: 'pesh@gmail.com', password: '123')


learning = NoteBook.create!(
    name: 'Learning',
    user_id: nick.id,
    delete_object: false
)

learning1 = NoteBook.create!(
    name: 'Learning',
    user_id: jeff.id,
    delete_object: false
)


javascript = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)



javascript0 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)


javascript1 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)



javascript3 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript4 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript5 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript6 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)
