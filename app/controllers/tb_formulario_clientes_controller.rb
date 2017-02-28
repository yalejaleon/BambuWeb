class TbFormularioClientesController < ApplicationController
  before_action :set_tb_formulario_cliente, only: [:show, :edit, :update, :destroy]

  # GET /tb_formulario_clientes
  # GET /tb_formulario_clientes.json
  def index
    @tb_formulario_clientes = TbFormularioCliente.all
  end

  # GET /tb_formulario_clientes/1
  # GET /tb_formulario_clientes/1.json
  def show
  end

  # GET /tb_formulario_clientes/new
  def new
    @tb_formulario_cliente = TbFormularioCliente.new
  end

  # GET /tb_formulario_clientes/1/edit
  def edit
  end

  # POST /tb_formulario_clientes
  # POST /tb_formulario_clientes.json
  def create
    @tb_formulario_cliente = TbFormularioCliente.new(tb_formulario_cliente_params)

    respond_to do |format|
      if @tb_formulario_cliente.save
        format.html { redirect_to @tb_formulario_cliente, notice: 'Tb formulario cliente was successfully created.' }
        format.json { render :show, status: :created, location: @tb_formulario_cliente }
      else
        format.html { render :new }
        format.json { render json: @tb_formulario_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_formulario_clientes/1
  # PATCH/PUT /tb_formulario_clientes/1.json
  def update
    respond_to do |format|
      if @tb_formulario_cliente.update(tb_formulario_cliente_params)
        format.html { redirect_to @tb_formulario_cliente, notice: 'Tb formulario cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_formulario_cliente }
      else
        format.html { render :edit }
        format.json { render json: @tb_formulario_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_formulario_clientes/1
  # DELETE /tb_formulario_clientes/1.json
  def destroy
    @tb_formulario_cliente.destroy
    respond_to do |format|
      format.html { redirect_to tb_formulario_clientes_url, notice: 'Tb formulario cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_formulario_cliente
      @tb_formulario_cliente = TbFormularioCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_formulario_cliente_params
      params.require(:tb_formulario_cliente).permit(:codigo, :codigo_cliente, :codigo_formulario)
    end
end
