class LandmarksController < ApplicationController
  get "/" do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  post "/" do
    Landmark.create(params[:landmark])
    flash[:notice] = "Landmark added successfully."
    redirect :landmarks
  end

  get "/new" do
    erb :"landmarks/new"
  end

  get "/:id" do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show"
  end

  get "/:id/edit" do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/edit"
  end

  patch "/:id/edit" do
    landmark = Landmark.find(params[:id])
    landmark.name = params[:landmark][:name]
    landmark.year_completed = params[:landmark][:year_completed]
    landmark.save
    flash[:notice] = "Landmark updated successfully."
    redirect "landmarks/#{landmark.id}"
  end
end
