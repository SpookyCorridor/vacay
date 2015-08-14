class DestinationsController < ApplicationController
  #get
  def index
    #render list...give form to checkoff vacation
  end
  #get
  def new 
    #display form to create new destination
  end
  #post
  def create
    # handle form submission and add to DB 
  end
  #post
  def update
    # lets a user check off vacay from index
  end
  #patch
  def delete
    # let user delete vacay if they have not checked it off
    # else...they can't, you've already been there
  end
  #get
  def confirmation
    #catch-all confirmation 
  end
end
