class ReviewsController < ApplicationController
  before_action :authorize, only: [:new, :create]
  before_action :authorize_admin, only: [:destroy]

  def new
   @product = Product.find(params[:product_id])
   @new_review = @product.reviews.new
 end

 def create
   @product = Product.find(params[:product_id])
   @new_review = @product.reviews.new(review_params)
   if @new_review.save
     redirect_to @product, notice: "Review successfully added!"
   else
     render :new
   end
 end

 def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

 private

 def review_params
   params.require(:review).permit(:content, :author, :product_id)
 end
end
