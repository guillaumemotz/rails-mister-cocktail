class DosesController < ApplicationController
  def new
    @dose = Dose.new
    # byebug
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @dose.cocktail, notice: 'dose was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    # @cocktail = Cocktail.find(params[:id])
    @dose.destroy
    # Failure/Error: delete :destroy, params: { id: @dose.id }
    redirect_to cocktail_path(@dose.cocktail) , notice: 'Restaurant was successfully destroyed.'
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

# Failure/Error:
#        expect {
#          post :create, params: { cocktail_id: @cocktail.id, :dose => valid_attributes}
#        }.to change(Dose, :count).by(1)




#   def index
#     @cocktails = Cocktail.all
#   end

#   def show
#     @cocktail = Cocktail.find(params[:id])
#   end

# def new
#     @cocktail = Cocktail.new
#   end

# def create
#     @cocktail = Cocktail.new(cocktail_params)
#     if @cocktail.save
#       redirect_to @cocktail, notice: 'cocktail was successfully created.'
#     else
#       render :new
#     end
#   end


#   private

# def cocktail_params
#       params.require(:cocktail).permit(:name)
#     end
# end


# def create
#     # Je récupère les infos du formulaire
#     @review = Review.new(review_params)
#     # Je récupère le resto par les params du path
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     # j'attache les 2 ensembles
#     @review.restaurant = @restaurant
#     @review.save
#     redirect_to restaurant_path(@restaurant)
#   end

#   def show
#     @review = Review.find(params[:id])
#   end

#   private

#   def review_params
#     params.require(:review).permit(:content)
#   end
# end

