class StrainsController < ApplicationController
    before_action :set_strain, only: %i[ edit update destroy ]
  
    def index
      @strains = Strain.all
    end
  
    def new
      @strain = Wine.new
    end
  
    def edit
    end
  
    def create
      @strain = Strain.new(strain_params)
  
      respond_to do |format|
        if @strain.save
          format.html { redirect_to strains_url, notice: "La cepa: #{@strain} fue agregada" }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @strain.update(wine_params)
          format.html { redirect_to strains_url, notice: "La cepa: #{@strain} fue modificada" }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @strain.destroy
  
      respond_to do |format|
        format.html { redirect_to strains_url, notice: "La cepa: #{@strain} fue eliminada" }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_strain
        @strain = Strain.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def strain_params
        params.require(:strain).permit(:name, :origin)
      end
  end
  