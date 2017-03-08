class TbComentariosController < ApplicationController
  before_action :set_tb_comentario, only: [:show, :edit, :update, :destroy]

  # GET /tb_comentarios
  # GET /tb_comentarios.json
  def index
    @estados=HTTParty.get('http://192.168.0.100:8080/spa/estados',:headers =>{'Content-Type' => 'application/json'})
    @ciudades=HTTParty.get('http://192.168.0.100:8080/spa/ciudades',:headers =>{'Content-Type' => 'application/json'})
    @tipo_preguntas=HTTParty.get('http://192.168.0.100:8080/spa/tipoPregunta',:headers =>{'Content-Type' => 'application/json'})
    @tb_comentarios = HTTParty.get('http://192.168.0.100:8080/spa/tipoComentario',:headers =>{'Content-Type' => 'application/json'})
  end

  # GET /tb_comentarios/1
  # GET /tb_comentarios/1.json
  def show
  end

  # GET /tb_comentarios/new
  def new
    @tb_comentario = TbComentario.new
  end

  # GET /tb_comentarios/1/edit
  def edit
  end

  # POST /tb_comentarios
  # POST /tb_comentarios.json
  def create
    @tb_comentario = TbComentario.new(tb_comentario_params)

    respond_to do |format|
      if @tb_comentario.save
        format.html { redirect_to @tb_comentario, notice: 'Tb comentario was successfully created.' }
        format.json { render :show, status: :created, location: @tb_comentario }
      else
        format.html { render :new }
        format.json { render json: @tb_comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_comentarios/1
  # PATCH/PUT /tb_comentarios/1.json
  def update
    respond_to do |format|
      if @tb_comentario.update(tb_comentario_params)
        format.html { redirect_to @tb_comentario, notice: 'Tb comentario was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_comentario }
      else
        format.html { render :edit }
        format.json { render json: @tb_comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_comentarios/1
  # DELETE /tb_comentarios/1.json
  def destroy
    @tb_comentario.destroy
    respond_to do |format|
      format.html { redirect_to tb_comentarios_url, notice: 'Tb comentario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_comentario
      @tb_comentario = TbComentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_comentario_params
      params.require(:tb_comentario).permit(:tipo_comentario, :codigo, :descripcion, :codigo_usuario, :codigo_usuario_web)
    end
end
