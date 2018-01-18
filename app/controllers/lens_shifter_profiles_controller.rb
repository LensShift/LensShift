class LensShifterProfilesController < ApplicationController
  before_action :set_lens_shifter_profile, only: [:show, :edit, :update, :destroy]

  # GET /lens_shifter_profiles
  # GET /lens_shifter_profiles.json
  def index
    @lens_shifter_profiles = LensShifterProfile.all
  end

  # GET /lens_shifter_profiles/1
  # GET /lens_shifter_profiles/1.json
  def show
  end

  # GET /lens_shifter_profiles/new
  def new
    @lens_shifter_profile = LensShifterProfile.new
  end

  # GET /lens_shifter_profiles/1/edit
  def edit
  end

  # POST /lens_shifter_profiles
  # POST /lens_shifter_profiles.json
  def create
    @lens_shifter_profile = LensShifterProfile.new(lens_shifter_profile_params)

    respond_to do |format|
      if @lens_shifter_profile.save
        format.html { redirect_to @lens_shifter_profile, notice: 'Lens shifter profile was successfully created.' }
        format.json { render :show, status: :created, location: @lens_shifter_profile }
      else
        format.html { render :new }
        format.json { render json: @lens_shifter_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lens_shifter_profiles/1
  # PATCH/PUT /lens_shifter_profiles/1.json
  def update
    respond_to do |format|
      if @lens_shifter_profile.update(lens_shifter_profile_params)
        format.html { redirect_to @lens_shifter_profile, notice: 'Lens shifter profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @lens_shifter_profile }
      else
        format.html { render :edit }
        format.json { render json: @lens_shifter_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lens_shifter_profiles/1
  # DELETE /lens_shifter_profiles/1.json
  def destroy
    @lens_shifter_profile.destroy
    respond_to do |format|
      format.html { redirect_to lens_shifter_profiles_url, notice: 'Lens shifter profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lens_shifter_profile
      @lens_shifter_profile = LensShifterProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lens_shifter_profile_params
      params.require(:lens_shifter_profile).permit(:model)
    end
end
