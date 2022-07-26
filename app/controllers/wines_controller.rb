class WinesController < ApplicationController
  before_action :set_wine, only: %i[ edit update destroy ]
  before_action :set_strain, only: %i[ new edit create update]

  # GET /wines or /wines.json
  def index
    @wines = Wine.includes(blends: [:strain]).all
    @blends = Blend.all
  end


  # GET /wines/new
  def new
    @wine = Wine.new
    @blends = @wine.blends.build
  end

  # GET /wines/1/edit
  def edit
  end

  # POST /wines or /wines.json
  def create
    @wine = Wine.new(wine_params)

    respond_to do |format|
      if @wine.save
        format.html { redirect_to wines_url(@wine), notice: "El vino: '#{@wine.name}' fue agregado" }
        format.json { render :show, status: :created, location: @wine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wines/1 or /wines/1.json
  def update
    respond_to do |format|
      if @wine.update(wine_params)
        format.html { redirect_to wines_url(@wine), notice: "El vino: '#{@wine.name}' fue modificado" }
        format.json { render :show, status: :ok, location: @wine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wines/1 or /wines/1.json
  def destroy
    @wine.destroy

    respond_to do |format|
      format.html { redirect_to wines_url, notice: "El vino: '#{@wine.name}' fue eliminado del registro" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine
      @wine = Wine.includes(blends: [:strain]).find(params[:id])
    end

    def set_strain
      @strains = Strain.pluck(:name, :id)
    end

    # Only allow a list of trusted parameters through.
    def wine_params
      params.require(:wine).permit(:name, :wineyard, :year, blends_attributes: [:id, :percentage, :strain_id, :_destroy])
    end
end
