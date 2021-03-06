class ReviewsController < ApplicationController
  def create
    @review = Review.new(reviews_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :stars)
  end
end
