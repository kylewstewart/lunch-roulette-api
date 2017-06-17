Place.create(name: "Essen", location: "100 Broad Street, NY, NY, 10004", image: "http://experiencenomad.com/wp-content/uploads/2014/02/essen-1024x764.jpg")
Place.create(name: "Sweetgreen", location: "67 Wall Street, NY, NY 10005", image: "https://flagshipphoto.files.wordpress.com/2013/09/sweetgreen-boylston-flagship.jpg?w=800&h=533")
Place.create(name: "Fresh&Co", location: "42 Broadway, NY, NY, 10004", image: "https://media-cdn.tripadvisor.com/media/photo-s/03/e8/da/96/entrance-outside.jpg")
Place.create(name: "Dig Inn", location: "80 Broad Street, NY, NY, 10004", image: "https://brookfieldplaceny.com/xform/tenant/website_tenants_carousel/DigInn_2_original.jpg?width=1080")
Place.create(name: "Num Pang Sandwich Shop", location: "75 Broad Street, NY, NY, 10004", image: "http://assets.dnainfo.com/generated/photo/2015/10/num-pang-1445613326.jpg/larger.jpg")

places =[1,2,3,4,5]
emails = ['kyle.stewart','Jonny.Andrews', 'Tina.Zhong']
authorization_code = [8888]
star_rating = [1,2,3,4,5]
cost = ['Practically Free', 'OK', 'OTT']
bodily_impact = ['Like I Went to Yoga', 'Fat Jeans Tomorrow', "Yikes, What's the Bathroom Code?" ]
recommended_for = ['Feelings Friday', 'Javascript Module', 'Post-Lunch Nap in Kay']

150.times do
  Review.create(
    place_id: places.shuffle[0],
    email: emails.shuffle[0],
    authorization_code: authorization_code,
    star_rating:star_rating.shuffle[0],
    cost: cost.shuffle[0],
    bodily_impact: bodily_impact.shuffle[1],
    recommended_for: recommended_for.shuffle[0]
  )
end
