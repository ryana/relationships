namespace :explain do

  task :populate => :environment do
    User.delete_all
    Forum.delete_all
    Post.delete_all
    Comment.delete_all

    User.create! :email => 'ryan@angilly.com'
    User.first.forums.create! :name => 'My first forum!'
    Forum.create! :name => 'not my forum'

    u = User.first
    u.forums.first.posts.create! :name => 'My first post on my first forum'
    u.forums.first.posts.first.comments.create! :content => "and lets add a little itty bitty comment over here"
    Comment.create! :content => "i dont own this guy..."
  end

  task :go => :environment do
    u = User.first

    puts "u = User.first"
    puts u.inspect
    print "u.forums: "
    puts u.forums.inspect
    print "u.posts: "
    puts u.posts.inspect
    print "u.comments: "
    puts u.comments.inspect
  
    puts "\n\n\n"
    puts "None of the above look like relationships when you call inspect on them, but..."
    print "u.forums.class: "
    puts u.forums.class
    print "u.posts.class: "
    puts u.posts.class
    print "u.comments.class: "
    puts u.comments.class
  
    puts "\nu.comments, as expected, is."
  end

end
