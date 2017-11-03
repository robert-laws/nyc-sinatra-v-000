class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures/new' do
    @figure = Figure.create(params[:figure])

    if !params[:title][:name].empty?
      @title = Title.create(params[:title])
      @figure.title_ids << @title.id
    end
    @figure.save
    redirect to "/figures/#{@figure.id}"
  end
end
