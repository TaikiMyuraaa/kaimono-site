# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(product_id:'0001', aouthor_id:'0001', publisher_id:'0001',title:'ワンピース',price:400,category_id:'01')
Book.create(product_id:'0002', aouthor_id:'0002', publisher_id:'0001',title:'ナルト',price:400,category_id:'01')
Book.create(product_id:'0003', aouthor_id:'0003', publisher_id:'0002',title:'コナン',price:400,category_id:'01')
Book.create(product_id:'0004', aouthor_id:'0004', publisher_id:'0001',title:'ジョジョ第3部',price:400,category_id:'01')
Book.create(product_id:'0005', aouthor_id:'0004', publisher_id:'0001',title:'ジョジョ第5部',price:400,category_id:'01')
Book.create(product_id:'0006', aouthor_id:'0005', publisher_id:'0002',title:'MAJOR',price:400,category_id:'01')
Book.create(product_id:'0007', aouthor_id:'0006', publisher_id:'0003',title:'学問のすすめ',price:400,category_id:'02')
Book.create(product_id:'0008', aouthor_id:'0006', publisher_id:'0003',title:'西洋事情',price:400,category_id:'02')

(9..100).each do |c|
  Book.create(product_id:'%04d' % "#{c}", aouthor_id:'0006', publisher_id:'0003',title:'西洋事情',price:400,category_id:'02')
end

Aouthor.create(aouthor_id:'0001', aouthor_name:'尾田栄一郎')
Aouthor.create(aouthor_id:'0002', aouthor_name:'岸本斉史')
Aouthor.create(aouthor_id:'0003', aouthor_name:'青山剛昌')
Aouthor.create(aouthor_id:'0004', aouthor_name:'荒木飛呂彦')
Aouthor.create(aouthor_id:'0005', aouthor_name:'満田拓也')
Aouthor.create(aouthor_id:'0006', aouthor_name:'福沢諭吉')

Publisher.create(publisher_id:'0001', publisher_name:'集英社')
Publisher.create(publisher_id:'0002', publisher_name:'小学館')
Publisher.create(publisher_id:'0003', publisher_name:'講談社')

Customer.create(customer_id:'0001',customer_name:'田中',kana:'タナカ',mail:'tanaka@mail.com')
Customer.create(customer_id:'0002',customer_name:'山口',kana:'ヤマグチ',mail:'yamaguchi@mail.com')
Customer.create(customer_id:'0003',customer_name:'加藤',kana:'カトウ',mail:'katou@mail.com')

Password.create(customer_id:'0001',password:'test1')
Password.create(customer_id:'0002',password:'test2')
Password.create(customer_id:'0003',password:'test3')

BookType.create(type_cd:'01',type_name:'マンガ')
BookType.create(type_cd:'02',type_name:'評論')
