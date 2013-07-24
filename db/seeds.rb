# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#puts 'Create form'
=begin
Form.create(
  type_of_legal_entity: 'ООО',
  company: 'ВелоГигант',
  creator_name: 'Слава В.Ю.',
  registered_address: '123456, СПб, Клёвая улица 21',
  actual_address: '123456, СПб, Клёвая улица 21',
  address_on_english: '123456, SPb, Cool st. 21',
  phone: '555-55-55',
  fax: '8(812)123 4567',
  email: 'hrena.lusogo@el.com',
  inn: '1234567890',
  kpp: '123456789',
  ogrn: '1234567890123',
  bank_name: 'Длинное название',
  current_account: '12345678901234567890',
  correspondent_account: '12345678901234567890',
  bik: '123456789',
  bank_person: 'Личность Известная Умная',
  type_of_certificate: 'Положительный',
  auditors_name: 'Пётр Сергеевич Нахалов Фёдр Фёдырыч Нахалов Николай Николаевич Нахалов',
  categories_list_of_works: 'some'
)
=end

Category.delete_all

category_seed_data = [
  ['1.', 'some']
]

category_seed_data.each do |path, name|
  puts 'Create category ' + path + name
  Category.create( path: path, name: name )
end