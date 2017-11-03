class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures/new' do
    @figure = Figure.create(params[:figure])

    if !params[:title][:name].empty?
      @title = Title.create(params[:title])
      @figure.titles << @title
    end
    @figure.save

    if !params[:landmark][:name].empty?
      @landmark = Landmark.create(params[:landmark])
      @figure.landmarks << @landmark
    end
    @figure.save

    redirect to "/figures/#{@figure.id}"
  end
end
