class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  # we have to create a new action new
  # this method is going to have a form, that the user will add a restaurant
  # in the controller we will add @restaurant = Restaurant.new
  # as an empty method in order for the user to fill it.
  # we create an html file with a form
  # we will create a form partial in the view so that we can render this form
  def new
    @restaurant = Restaurant.new
  end

  # after creating a landing for the form (new) for the user
  # now we add a method to actuilly submit this form

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # create is used to initialize a new instance of the Restaurant model
  # with the parameters provided by the user in the form.
  def create
    @restaurant = Restaurant.new(restaurant_params)

    # since we have validation, it could not save, if something missing
    # so we have to add an if statement to give to way saved or no
    # if it is saved successfully, redirect_to the
    # show page of the newly created restaurant.
    # The restaurant_path(@restaurant) method would generate a URL like /restaurants/1 for a restaurant with an ID of 1.
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # permitspecifies which attributes are allowed to be assigned from the submitted form data.
  # Only these attributes will be accepted, preventing unwanted parameters from being used.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
