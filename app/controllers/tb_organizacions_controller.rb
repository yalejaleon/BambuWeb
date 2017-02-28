class TbOrganizacionsController < ApplicationController
  before_action :set_tb_organizacion, only: [:show, :edit, :update, :destroy]

  # GET /tb_organizacions
  # GET /tb_organizacions.json
  def nosotros
    @tb_organizacions = TbOrganizacion.all
   # @tb_organizacions = HTTParty.get('http://localhost:3000/api/organizacion',:headers =>{'Content-Type' => 'application/json'})

  end

  # GET /tb_organizacions/1
  # GET /tb_organizacions/1.json
  def show
  end

  # GET /tb_organizacions/new
  def new
    @tb_organizacion = TbOrganizacion.new
  end

  # GET /tb_organizacions/1/edit
  def edit
  end

  # POST /tb_organizacions
  # POST /tb_organizacions.json
  def create
    @tb_organizacion = TbOrganizacion.new(tb_organizacion_params)

    respond_to do |format|
      if @tb_organizacion.save
        format.html { redirect_to @tb_organizacion, notice: 'Tb organizacion was successfully created.' }
        format.json { render :show, status: :created, location: @tb_organizacion }
      else
        format.html { render :new }
        format.json { render json: @tb_organizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_organizacions/1
  # PATCH/PUT /tb_organizacions/1.json
  def update
    respond_to do |format|
      if @tb_organizacion.update(tb_organizacion_params)
        format.html { redirect_to @tb_organizacion, notice: 'Tb organizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_organizacion }
      else
        format.html { render :edit }
        format.json { render json: @tb_organizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_organizacions/1
  # DELETE /tb_organizacions/1.json
  def destroy
    @tb_organizacion.destroy
    respond_to do |format|
      format.html { redirect_to tb_organizacions_url, notice: 'Tb organizacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_organizacion
      @tb_organizacion = TbOrganizacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_organizacion_params
      params.require(:tb_organizacion).permit(:rif, :nombre, :correo, :direccion, :telefono, :mision, :vision)
    end
end
