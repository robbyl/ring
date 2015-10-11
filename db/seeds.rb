# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ServiceCategory.create!([
  {name: "Reception Venues", image_file_name: "venue.jpg", image_content_type: "image/jpeg", image_file_size: 61609},
  {name: "Flowers", image_file_name: "flowers.jpg", image_content_type: "image/jpeg", image_file_size: 43325},
  {name: "Jewel", image_file_name: "rings.jpg", image_content_type: "image/jpeg", image_file_size: 20412},
  {name: "Photographs", image_file_name: "photography.jpg", image_content_type: "image/jpeg", image_file_size: 19927},
  {name: "Wedding cards", image_file_name: "invitation_cards.jpg", image_content_type: "image/jpeg", image_file_size: 27007},
  {name: "Videographs", image_file_name: "videograph.jpg", image_content_type: "image/jpeg", image_file_size: 19892},
  {name: "Wedding Cake", image_file_name: "cake.jpg", image_content_type: "image/jpeg", image_file_size: 48888}
])

Service.create!([
  {name: "Diamond jubilee hall", price: "2500000.0", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.", rate_times: 4.7, capacity: 700, location: "Upanga", image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil, vendor_id: 1, service_category_id: 1},
  {name: "Mlimani city Hall", price: "1798000.0", description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.", rate_times: 2.0, capacity: 600, location: "Ubungo", image_file_name: "flowers.jpg", image_content_type: "image/jpeg", image_file_size: 43325, image_updated_at: "2015-09-26 10:42:58", vendor_id: 2, service_category_id: 1}
])

User.create!([
  {first_name: nil, last_name: nil, username: "admin", salt: nil, hashed_password: nil, is_admin: false}
])
Vendor.create!([
  {name: "Aghakan", address: "Upanga", phone: "+25589452378"},
  {name: "University of Dar es salaam", address: "Ubungo", phone: "25589475124"},
  {name: "Mzuri kwao Ltd", address: "Kionondoni", phone: "+255474125489"}
])

Budget.create!([
  {wedding_id: 12},
  {wedding_id: 17}
])
Service.create!([
  {name: "Diamond jubelee hall", price: nil, description: nil, rate_times: nil, capacity: nil, location: nil, image_file_name: "beach-wedding-venues.jpg", image_content_type: "image/jpeg", image_file_size: 96829, image_updated_at: "2015-10-11 18:21:52", vendor_id: 1, service_category_id: 1}
])
ServiceCategory.create!([
  {name: "Reception Venues", image_file_name: "venue.jpg", image_content_type: "image/jpeg", image_file_size: 61609, image_updated_at: "2015-10-10 12:05:07"},
  {name: "Flowers", image_file_name: "flowers.jpg", image_content_type: "image/jpeg", image_file_size: 43325, image_updated_at: "2015-09-24 21:32:08"},
  {name: "Jewel", image_file_name: "rings.jpg", image_content_type: "image/jpeg", image_file_size: 20412, image_updated_at: "2015-09-25 09:59:55"},
  {name: "Photographs", image_file_name: "photography.jpg", image_content_type: "image/jpeg", image_file_size: 19927, image_updated_at: "2015-10-10 12:27:25"},
  {name: "Wedding cards", image_file_name: "invitation_cards.jpg", image_content_type: "image/jpeg", image_file_size: 27007, image_updated_at: "2015-10-10 12:52:18"},
  {name: "Videographs", image_file_name: "videograph.jpg", image_content_type: "image/jpeg", image_file_size: 19892, image_updated_at: "2015-10-10 12:18:11"},
  {name: "Wedding Cake", image_file_name: "cake.jpg", image_content_type: "image/jpeg", image_file_size: 48888, image_updated_at: "2015-09-24 22:01:25"}
])
ServiceImage.create!([
  {image_file_name: "reception_598.jpg", image_content_type: "image/jpeg", image_file_size: 35055, image_updated_at: "2015-10-11 17:52:04", service_id: 4},
  {image_file_name: "wedding-venue-monaco1.jpg", image_content_type: "image/jpeg", image_file_size: 473686, image_updated_at: "2015-10-11 17:52:04", service_id: 4}
])
User.create!([
  {first_name: nil, last_name: nil, username: "admin", salt: nil, hashed_password: nil, is_admin: false}
])
Vendor.create!([
  {name: "Aghakan", address: "Upanga", phone: "+255713987564", website: "http://aghakan.com", logo_file_name: "aghakan.jpg", logo_content_type: "image/jpeg", logo_file_size: 33094, logo_updated_at: "2015-10-11 18:35:40"}
])
Wedding.create!([
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300},
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300},
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300},
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300},
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300},
  {groom_first_name: "John", groom_last_name: "Mlugo", bride_first_name: "Jackline", bride_last_name: "Mwiru", location: "Dar es salaam", wedding_date: "2015-12-04", guests: 300}
])
