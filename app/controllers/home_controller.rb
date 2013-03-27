# encoding: UTF-8
class HomeController < ApplicationController
  def index
    @speakers = [
                   [ name: "Tommy Rochette",
                           twitter: "trochette",
                           bio: "Sr. Consultant at Universal Mind, focused on building rich Internet applications with HTML5 and Javascript. "],
                 [ name: "Johnny Winn",
                          twitter: "johnny_rugger",
                          bio: "Hashrocket Rocketeer, Ruby developer with a passion for software craftmanship."],
                 [ name: "konstantin gredeskoul",
                          twitter: "kig",
                          bio: "Narrow specialist in wide generality, who works at wanelo.com and has worked on too many Ruby Applications."],
                    [ name: "Ron Evans",
                          twitter: "deadprogram",
                          bio: "Software developer and OSS contributor, author and speaker; principal at The Hybrid Group in LA. Habla español!"],
                   [ name: "Nick sutterer",
                          twitter: "apotonick",
                          bio: "Ruby OSS contributor and speaker. His projects Cells and Apotomo brings view modularity and event-driven programming to Rails."],
                 [ name: "javier cervantes",
                          twitter: "solojavier",
                          bio: "Apprentice of artesanal software development, who works at Hybrid Group and runs the Ruby GDL user group."],
                  [ name: "ivan acosta rubio",
                          twitter: "ivanacostarubio",
                          bio: "Venezuelan in Mexico, co-founder of SoftwareCriollo.com, building Meals.mx"],
                 [ name: "mario a chavez",
                          twitter: "Mario_Chavez",
                          bio: "A software developer who woke up to Ruby after a few boring years in .NET"],
                 [ name: "francisco viramontes",
                             twitter: "kidpollo",
                             bio: "Mac lover and Rubyst, experienced on building fast, secure and reliable Ruby on Rails enterprise applications."],
                 [ name: 'norberto hernández',
                           twitter: "norbertohdez",
                           bio: "Web designer and front-end developer, passionate about HTML5 and CSS3, proud vegetarian."],
                  [ name: "edwin cruz",
                          twitter: "softr8",
                          bio: "Crazy dude obsessed with high performance web applications, specialized in Ruby on Rails, scalable solutions and team work."],
                 [ name: "Herman Moreno",
                          twitter: "supherman",
                          bio: "Software engineer, passionate programmer, Rubyst and DIY guy, also a best code practices enthusiast."],
                    [ name: "jon dean",
                          twitter: "jonathanedean",
                          bio: "Web sites builder, in love with OSS, focused on Ruby on Rails, Javascript and CSS. Working at Stitch Fix."],
                   [ name: "eric saxby",
                          twitter: "ecdysone",
                          bio: "Software engineer at Wanelo.com, uses Chef to manage their growing infraestructure. Worked on a circus once."],
                 [ name: "manuel vidaurre",
                          twitter: "mvidaurre",
                          bio: "Mexican developer, writer and salesman; self taught, eager for knowledge."],
                 [ name: "blake mizerany",
                          twitter: "bmizerany",
                          bio: "Sinatra's creator who currently builds systems in Go language for Heroku."],
                  #[ name: "Konstantin Haase",
                          #twitter: "konstantinhaase",
                          #bio: "A german working at TravisCI, who works in so many OSS projects, like: Sinatra, Puma, Rubinius."]

    ]
    response.headers['Cache-Control'] = 'public, max-age=3000'
  end
end
