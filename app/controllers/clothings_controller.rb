class ClothingsController < ApplicationController
  def index
    clothings = Clothing.all
    render json: clothings.as_json
  end

  def create
    clothing = Clothing.new(
      item: params[:item],
      price: params[:price],
      size: params[:size]
    )
    clothing.save
    render json: clothing.as_json
  end

  def show
    clothing = Clothing.find_by(id: params[:id])
    render json: clothing.as_json
  end

  def update
    clothing = Clothing.find_by(id: params[:id])
    clothing.item = params[:item] || clothing.item
    clothing.price = params[:price] || clothing.price
    clothing.size = params[:size] || clothing.size
    clothing.save
    render json: clothing.as_json
  end

  def destroy
    clothing = Clothing.find_by(id: params[:id])
    clothing.destroy
    render json: {message: "Item successfully destroyed."}
  end
end
  