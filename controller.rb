require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( './models/student' )
also_reload( './models/*' )

#INDEX
  get '/student-list' do
    @students = Student.all()
    erb(:index)
  end

#NEW
  get '/student-list/new' do
    erb(:new)
  end

#CREATE
  post '/student-list' do
    @students = Student.new( params )
    @students.save()
    erb(:create)
  end
