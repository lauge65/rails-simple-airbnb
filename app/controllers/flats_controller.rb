class FlatsController < ApplicationController
  before_action :set_flat, only: [ :show, :edit, :update, :destroy]

  # GET /flats
  def index
    @flats = Flat.all
  end

# GET/flats/id
def show
end

# GET /flats/new
def new
  @flat = Flat.new
end

#POST /flats
def create
  @flat = Flat.new(flat_params)

  if @flat.save
    redirect_to flats_path, notice: "Flat was successfully created."
  else
    render :new, status: :unprocessable_entity
  end
end

 # GET /flats/1/edit
def edit
end

# PATCH/PUT /flats/1
def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: "Flat was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
end

#DELETE /flats/1
def destroy
  @flat.destroy!
  redirect_to flats_path, notice: "Flat was successfully destroyed", status: :see_other
end

private

def set_flat
  @flat = Flat.find(params[:id])
end

def flat_params
  params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
end

end
