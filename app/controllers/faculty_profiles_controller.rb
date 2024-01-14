class FacultyProfilesController < ApplicationController
  before_action :set_faculty_profile, only: %i[ show edit update destroy ]

  # GET /faculty_profiles or /faculty_profiles.json
  def index
    @faculty_profiles = FacultyProfile.all
  end

  # GET /faculty_profiles/1 or /faculty_profiles/1.json
  def show
    @faculty_profile = FacultyProfile.find_by(user_id: current_user.id)
  end

  # GET /faculty_profiles/new
  def new
    @faculty_profile = FacultyProfile.new
  end

  # GET /faculty_profiles/1/edit
  def edit
  end

  # POST /faculty_profiles or /faculty_profiles.json
  def create
    @faculty_profile = FacultyProfile.new(faculty_profile_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @faculty_profile.save
        format.html { redirect_to faculty_profile_url(@faculty_profile), notice: "Faculty profile was successfully created." }
        format.json { render :show, status: :created, location: @faculty_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faculty_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculty_profiles/1 or /faculty_profiles/1.json
  def update
    respond_to do |format|
      if @faculty_profile.update(faculty_profile_params)
        format.html { redirect_to faculty_profile_url(@faculty_profile), notice: "Faculty profile was successfully updated." }
        format.json { render :show, status: :ok, location: @faculty_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faculty_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculty_profiles/1 or /faculty_profiles/1.json
  def destroy
    @faculty_profile.destroy!

    respond_to do |format|
      format.html { redirect_to faculty_profiles_url, notice: "Faculty profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty_profile
      @faculty_profile = FacultyProfile.find_by(user_id: current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def faculty_profile_params
      params.require(:faculty_profile).permit(:name, :email_id, :dept, :staff_id)
    end
end
