class TimeGroupsController < ApplicationController
  before_action :set_time_group, only: [:show, :edit, :update, :destroy]

  # GET /time_groups
  # GET /time_groups.json
  def index
    @time_groups = TimeGroup.all
  end

  # GET /time_groups/1
  # GET /time_groups/1.json
  def show
  end

  # GET /time_groups/new
  def new
    @time_group = TimeGroup.new
  end

  # GET /time_groups/1/edit
  def edit
  end

  # POST /time_groups
  # POST /time_groups.json
  def create
    @time_group = TimeGroup.new(time_group_params)

    respond_to do |format|
      if @time_group.save
        format.html { redirect_to @time_group, notice: 'Time group was successfully created.' }
        format.json { render :show, status: :created, location: @time_group }
      else
        format.html { render :new }
        format.json { render json: @time_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_groups/1
  # PATCH/PUT /time_groups/1.json
  def update
    respond_to do |format|
      if @time_group.update(time_group_params)
        format.html { redirect_to @time_group, notice: 'Time group was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_group }
      else
        format.html { render :edit }
        format.json { render json: @time_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_groups/1
  # DELETE /time_groups/1.json
  def destroy
    @time_group.destroy
    respond_to do |format|
      format.html { redirect_to time_groups_url, notice: 'Time group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_group
      @time_group = TimeGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_group_params
      params.require(:time_group).permit(:student_name, :month, :day, :total_min)
    end
end
