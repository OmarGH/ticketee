require 'spec_helper'

describe ProjectsController do
  it "displays an error for a missing project" do
  get :show, :id => "not-here"
  response.should redirect_to(projects_path)
  message = "The project you were looking for could not be found."
  flash[:alert].should eql(message)
  end
  
  it "cannot access the show action" do
    sign_in(:user, user)
    get :show, :id => project.id
    response.should redirect_to(projects_path)
    flash[:alert].should eql("The project you were looking for could not be fou
    nd.")
    end
end
