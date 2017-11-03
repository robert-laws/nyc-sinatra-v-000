class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmark/new'
  end

  post 'landmarks/new' do
    
  end
end
