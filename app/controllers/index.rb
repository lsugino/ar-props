get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
	erb :create
end

post '/events/create' do
  # p params[:event]
  @event = Event.create(params[:event])
  @id = @event.id
  redirect "/events/#{@id}/show"
end
