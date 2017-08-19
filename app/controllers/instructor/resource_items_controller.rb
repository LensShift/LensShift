class Instructor::ResourceItemsController < ApplicationController
	before_action :authenticate_lens_shifter!
	before_action :set_resource_item, only: [:edit, :update, :destroy]


	# GET /resource_items/new
	def new
	    @resource_item = ResourceItem.new
	end

	  # GET /resource_items/1/edit
	def edit
	end

	  # POST /resource_items
	  # POST /resource_items.json
	def create
	    @resource_item = ResourceItem.new(resource_item_params)

	    respond_to do |format|
	      if @resource_item.save
	        format.html { redirect_to @resource_item, notice: 'Resource item was successfully created.' }
	        format.json { render :show, status: :created, location: @resource_item }
	      else
	        format.html { render :new }
	        format.json { render json: @resource_item.errors, status: :unprocessable_entity }
	      end
	    end
	end

	  # PATCH/PUT /resource_items/1
	  # PATCH/PUT /resource_items/1.json
	def update
	    respond_to do |format|
	      if @resource_item.update(resource_item_params)
	        format.html { redirect_to @resource_item, notice: 'Resource item was successfully updated.' }
	        format.json { render :show, status: :ok, location: @resource_item }
	      else
	        format.html { render :edit }
	        format.json { render json: @resource_item.errors, status: :unprocessable_entity }
	      end
	    end
	end

	  # DELETE /resource_items/1
	  # DELETE /resource_items/1.json
	def destroy
		@resource_item.destroy
	    respond_to do |format|
	      format.html { redirect_to resource_items_url, notice: 'Resource item was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private
 	
 	# Use callbacks to share common setup or constraints between actions.
    def set_resource_item
      @resource_item = ResourceItem.friendly.find(params[:id])
    end

	# Never trust parameters from the scary internet, only allow the white list through.
    def resource_item_params
      params.require(:resource_item).permit(:title, :author, :source, :source_url, :estimated_reading_time, :short_summary, :tags, :long_summary, :key_takeaways, :optional_analysis, :image, :type, :lens_shifter_id, :slug, :tag_list)
    end

end
