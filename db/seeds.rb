# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Title #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}" ,
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porttitor quis nulla quis egestas. Sed lacinia purus nisl, sit amet interdum lectus convallis sed. Mauris sed molestie erat, eu hendrerit augue. Vestibulum vel efficitur sapien. Morbi lobortis fermentum erat a imperdiet. Donec eleifend at odio et rhoncus. Pellentesque rutrum faucibus ipsum, et condimentum justo pulvinar eu. Vivamus pharetra arcu dolor, vel hendrerit diam suscipit ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum fringilla, urna et porttitor porta, lectus ex pellentesque libero, quis rhoncus magna sapien sit amet felis. Phasellus mollis nisi odio, sed suscipit lorem rhoncus id. Morbi euismod lectus vel erat elementum tincidunt. Cras ultrices orci et nulla viverra eleifend. Sed venenatis, metus eget ullamcorper convallis, felis tortor egestas nibh, quis ultricies quam elit vel mauris.",
    topic_id: Topic.last.id

  )
end
puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}" ,
    subtitle: "Ruby on Rails",
    body:"Sed orci tortor, consectetur vitae rutrum non, dapibus ut nisi. Etiam at imperdiet neque, sit amet imperdiet turpis. Duis vehicula nec arcu ac bibendum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur maximus, lorem in dictum vehicula, dolor risus scelerisque ex, id vehicula eros justo non justo. Nunc a odio ipsum. Curabitur suscipit sodales justo, ut consequat odio finibus a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus gravida ligula at neque dapibus placerat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim rhoncus nisi ultrices, non faucibus ante commodo. Nam faucibus, sapien nec pretium rutrum, mi felis vehicula purus, id tincidunt libero ex id nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce accumsan tristique massa in porttitor." ,
    main_image: "https://place-hold.it/600x400",
    thumb_image: "https://place-hold.it/350x200"

  )
end

2.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}" ,
    subtitle: "Angular",
    body:"Sed orci tortor, consectetur vitae rutrum non, dapibus ut nisi. Etiam at imperdiet neque, sit amet imperdiet turpis. Duis vehicula nec arcu ac bibendum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur maximus, lorem in dictum vehicula, dolor risus scelerisque ex, id vehicula eros justo non justo. Nunc a odio ipsum. Curabitur suscipit sodales justo, ut consequat odio finibus a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus gravida ligula at neque dapibus placerat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim rhoncus nisi ultrices, non faucibus ante commodo. Nam faucibus, sapien nec pretium rutrum, mi felis vehicula purus, id tincidunt libero ex id nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce accumsan tristique massa in porttitor." ,
    main_image: "https://place-hold.it/600x400",
    thumb_image: "https://place-hold.it/350x200"

  )
end

puts "10 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create(
    name: "Technology #{technology}"
  )
end

puts "3 Technologies created"
