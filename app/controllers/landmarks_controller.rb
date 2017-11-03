class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks/new' do
    @landmark = Landmark.create(params[:landmark])
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/show'
  end
end
