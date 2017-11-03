class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figure/new' do
    @figure = Figure.create(params[figure])
    redirect to "/figures/#{@figure.id}"
  end
end
