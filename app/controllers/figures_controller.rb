class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures/new' do
    @figure = Figure.create(name: params[figure][name])

    # redirect to "/figures/#{@figure.id}"
  end
end
