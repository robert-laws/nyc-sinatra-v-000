class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures/new' do
    binding.pry
    @figure = Figure.create(params[:figure])

    # redirect to "/figures/#{@figure.id}"
  end
end
