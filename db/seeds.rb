3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Bacon ipsum dolor amet cow drumstick tenderloin chicken bacon kielbasa
    andouille short loin frankfurter porchetta burgdoggen. Beef ribs chicken tail
    chuck kevin. Jerky beef ribs meatloaf ground round, burgdoggen swine ham pork
    loin doner pork belly brisket picanha leberkas. Turducken cow rump pork loin,
    jowl pig prosciutto strip steak doner ham hock tongue tenderloin short ribs.
    Shoulder andouille ham venison t-bone turducken, beef ribs pork belly filet
    mignon meatloaf leberkas biltong rump ground round cupim. Andouille beef ribs
    tail, jerky pork chop kevin meatloaf cupim prosciutto shankle chuck frankfurter.
    Prosciutto flank pork, rump alcatra boudin jerky bresaola cupim corned beef
    landjaeger kevin tenderloin turducken.",
    topic_id: Topic.last.id
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body:"Chuck sausage biltong t-bone pig doner swine porchetta pancetta shank
     shoulder short loin ribeye ground round. Ground round drumstick capicola
     ham hock. Tongue corned beef cupim leberkas frankfurter. Ham hock pork loin
      kevin turkey pork chop meatball short ribs short loin landjaeger andouille
      sirloin tenderloin salami ribeye swine. Meatloaf picanha pork chop porchetta.
      Jerky ball tip chuck andouille strip steak chicken jowl.",
    main_image:"http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body:"Chuck sausage biltong t-bone pig doner swine porchetta pancetta shank
     shoulder short loin ribeye ground round. Ground round drumstick capicola
     ham hock. Tongue corned beef cupim leberkas frankfurter. Ham hock pork loin
      kevin turkey pork chop meatball short ribs short loin landjaeger andouille
      sirloin tenderloin salami ribeye swine. Meatloaf picanha pork chop porchetta.
      Jerky ball tip chuck andouille strip steak chicken jowl.",
    main_image:"http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created"
