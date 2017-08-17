class ResourceItemsController < ApplicationController
  before_action :set_resource_item, only: [:show, :edit, :update, :destroy]

  # GET /resource_items
  # GET /resource_items.json
  def index
    @resource_items = ResourceItem.all
  end

  # GET /resource_items/1
  # GET /resource_items/1.json
  def show
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_item
      @resource_item = ResourceItem.friendly.find(params[:id])
    end
end
