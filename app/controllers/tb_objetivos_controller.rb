class TbObjetivosController < ApplicationController
  before_action :set_tb_objetivo, only: [:show, :edit, :update, :destroy]

  # GET /tb_objetivos
  # GET /tb_objetivos.json
  def index
    @tb_objetivos = TbObjetivo.all
  end

  # GET /tb_objetivos/1
  # GET /tb_objetivos/1.json
  def show
  end

  # GET /tb_objetivos/new
  def new
    @tb_objetivo = TbObjetivo.new
  end

  # GET /tb_objetivos/1/edit
  def edit
  end

  # POST /tb_objetivos
  # POST /tb_objetivos.json
  def create
    @tb_objetivo = TbObjetivo.new(tb_objetivo_params)

    respond_to do |format|
      if @tb_objetivo.save
        format.html { redirect_to @tb_objetivo, notice: 'Tb objetivo was successfully created.' }
        format.json { render :show, status: :created, location: @tb_objetivo }
      else
        format.html { render :new }
        format.json { render json: @tb_objetivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_objetivos/1
  # PATCH/PUT /tb_objetivos/1.json
  def update
    respond_to do |format|
      if @tb_objetivo.update(tb_objetivo_params)
        format.html { redirect_to @tb_objetivo, notice: 'Tb objetivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_objetivo }
      else
        format.html { render :edit }
        format.json { render json: @tb_objetivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_objetivos/1
  # DELETE /tb_objetivos/1.json
  def destroy
    @tb_objetivo.destroy
    respond_to do |format|
      format.html { redirect_to tb_objetivos_url, notice: 'Tb objetivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_objetivo
      @tb_objetivo = TbObjetivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_objetivo_params
      params.require(:tb_objetivo).permit(:codigo, :descripcion, :tipo_objetivo, :codigo_organizacion, :status)
    end
end
