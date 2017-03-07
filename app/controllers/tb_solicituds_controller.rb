class TbSolicitudsController < ApplicationController
  before_action :set_tb_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /tb_solicituds
  # GET /tb_solicituds.json
  def index
    @tb_solicituds = TbSolicitud.all
  end

  # GET /tb_solicituds/1
  # GET /tb_solicituds/1.json
  def show
  end

  # GET /tb_solicituds/new
  def new
    @tb_solicitud = TbSolicitud.new
  end

  # GET /tb_solicituds/1/edit
  def edit
  end

  # POST /tb_solicituds
  # POST /tb_solicituds.json
  def create
    @tb_solicitud = TbSolicitud.new(tb_solicitud_params)

    respond_to do |format|
      if @tb_solicitud.save
        format.html { redirect_to @tb_solicitud, notice: 'Tb solicitud was successfully created.' }
        format.json { render :show, status: :created, location: @tb_solicitud }
      else
        format.html { render :new }
        format.json { render json: @tb_solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_solicituds/1
  # PATCH/PUT /tb_solicituds/1.json
  def update
    respond_to do |format|
      if @tb_solicitud.update(tb_solicitud_params)
        format.html { redirect_to @tb_solicitud, notice: 'Tb solicitud was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_solicitud }
      else
        format.html { render :edit }
        format.json { render json: @tb_solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_solicituds/1
  # DELETE /tb_solicituds/1.json
  def destroy
    @tb_solicitud.destroy
    respond_to do |format|
      format.html { redirect_to tb_solicituds_url, notice: 'Tb solicitud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_solicitud
      @tb_solicitud = TbSolicitud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_solicitud_params
      params.fetch(:tb_solicitud, {})
    end
end
