# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#teachers
brie = User.create(first_name: "Brie", last_name: "Coyle", email: "brie_coyle@webbschool.org")
cassidy = User.create(first_name: "Cassidy", last_name: "Britt", email: "cassidy_britt@webbschool.org")
maggie = User.create(first_name: "Maggie", last_name: "Bouldin", email: "maggie_bouldin@webbschool.org")

#students
kate = User.create(first_name: "Kate", last_name: "Betz", email: "betk@webbstudent.org")
will = User.create(first_name: "Will", last_name: "Pensky", email: "penw@webbstudent.org")
romani = User.create(first_name: "Romani", last_name: "Bertoli", email: "berr1@webbstudent.org")
brooklyn = User.create(first_name: "Brooklyn", last_name: "Deans", email: "deab@webbstudent.org")

#classrooms
biology_b = Classroom.create(period: "B", subject: "Biology")
biology_c = Classroom.create(period: "C", subject: "Biology")
english_a = Classroom.create(period: "A", subject: "English")
english_x = Classroom.create(period: "X", subject: "English")

#associations
biology_b.teacher = brie
biology_c.teacher = brie
english_a.teacher = cassidy
english_x.teacher = maggie
biology_c.students << kate
biology_c.students << romani
biology_c.students << brooklyn
biology_b.students << will
english_a.students << will
english_x.students << kate
english_x.students << romani
english_x.students << brooklyn
