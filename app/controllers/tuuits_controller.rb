class TuuitsController < ApplicationController
  before_action :set_tuuit, only: %i[ show edit update destroy ]

  # GET /tuuits or /tuuits.json
  def index
    @tuuits = Tuuit.all
  end

  # GET /tuuits/1 or /tuuits/1.json
  def show
  end

  # GET /tuuits/new
  def new
    @tuuit = Tuuit.new
  end

  # GET /tuuits/1/edit
  def edit
  end

  # POST /tuuits or /tuuits.json
  def create
    @tuuit = Tuuit.new(tuuit_params)

    respond_to do |format|
      if @tuuit.save
        format.html { redirect_to @tuuit, notice: "Tuuit was successfully created." }
        format.json { render :show, status: :created, location: @tuuit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tuuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuuits/1 or /tuuits/1.json
  def update
    respond_to do |format|
      if @tuuit.update(tuuit_params)
        format.html { redirect_to @tuuit, notice: "Tuuit was successfully updated." }
        format.json { render :show, status: :ok, location: @tuuit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tuuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuuits/1 or /tuuits/1.json
  def destroy
    @tuuit.destroy
    respond_to do |format|
      format.html { redirect_to tuuits_url, notice: "Tuuit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuuit
      @tuuit = Tuuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuuit_params
      params.require(:tuuit).permit(:id, :user_id, :time, :tuuit, :title)
    end
end
