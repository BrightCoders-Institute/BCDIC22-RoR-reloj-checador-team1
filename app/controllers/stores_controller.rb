class StoresController < ApplicationController
  before_action :set_store, only: %i[ show edit update destroy ]

  def index
    @store = Store.all.ordered_stores
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save 
      redirect_to stores_url(@store), primary: "Store was successfully created."
    else
      redirect_to stores_url(@store), danger: "ERROR: Something went wrong :(" 
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    if @store.update(store_params)
      redirect_to stores_url(@store), primary: "Store was successfully updated."
    else
      redirect_to stores_url(@store), danger: "ERROR: Something went wrong :("
    end
  end

  private

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address)
  end

end
