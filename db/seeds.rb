# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all



User.create({username: "admin", password: "admin", admin: true})
User.create({username: "resident", password: "resident"})

MedicalCategory.create({category_name: "Allergy/Immunology"})
MedicalCategory.create({category_name: "Cardiology"})
MedicalCategory.create({category_name: "Dermatology"})
MedicalCategory.create({category_name: "Endocrinology"})
MedicalCategory.create({category_name: "Gastroenterology"})
MedicalCategory.create({category_name: "Geriatrics"})
MedicalCategory.create({category_name: "Hematology"})
MedicalCategory.create({category_name: "Infectious Disease"})
MedicalCategory.create({category_name: "Nephrology"})
MedicalCategory.create({category_name: "Neurology"})
MedicalCategory.create({category_name: "Oncology"})
MedicalCategory.create({category_name: "Pulmonology"})
MedicalCategory.create({category_name: "Rheumatology"})
