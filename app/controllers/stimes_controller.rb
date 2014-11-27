class StimesController < ApplicationController
  before_action :set_stime, only: [:show, :edit, :update, :destroy]

  # GET /stimes
  # GET /stimes.json
  def index
    @stimes = Stime.all
    @meets = Meet.all
    @strokes = Stroke.all
    @swimmers = Swimmer.all
  end

  # GET /stimes/1
  # GET /stimes/1.json
  def show
  end

  # GET /stimes/new
  def new
    @stime = Stime.new
      @meets = Meet.all
    @strokes = Stroke.all
    @swimmers = Swimmer.all
  end

  # GET /stimes/1/edit
  def edit
  end

  # POST /stimes
  # POST /stimes.json
  def create
    @stime = Stime.new(stime_params)

    respond_to do |format|
      if @stime.save
        format.html { redirect_to @stime, notice: 'Stime was successfully created.' }
        format.json { render :show, status: :created, location: @stime }
      else
        format.html { render :new }
        format.json { render json: @stime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stimes/1
  # PATCH/PUT /stimes/1.json
  def update
    respond_to do |format|
      if @stime.update(stime_params)
        format.html { redirect_to @stime, notice: 'Stime was successfully updated.' }
        format.json { render :show, status: :ok, location: @stime }
      else
        format.html { render :edit }
        format.json { render json: @stime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stimes/1
  # DELETE /stimes/1.json
  def destroy
    @stime.destroy
    respond_to do |format|
      format.html { redirect_to stimes_url, notice: 'Stime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stime
      @stime = Stime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stime_params
      params.require(:stime).permit(:time, :meet_id, :swimmer_id, :stroke_id)
    end
end
