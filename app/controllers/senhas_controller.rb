class SenhasController < ApplicationController
  before_action :set_senha, only: [:show, :edit, :update, :destroy]

  # GET /senhas
  # GET /senhas.json
  def index
    @senhas = Senha.all
  end

  # GET /senhas/1
  # GET /senhas/1.json
  def show
  end

  # GET /senhas/new
  def new
    @ultima_senha = Senha.last
    @senha = Senha.new
  end

  # GET /senhas/1/edit
  def edit
  end

  # POST /senhas
  # POST /senhas.json
  def create
    @ultima_senha = Senha.last
    @senha = Senha.new(senha_params)

    respond_to do |format|
      if @senha.save
        format.html { redirect_to new_senha_path, notice: 'Senha was successfully created.' }
       # format.json { render :show, status: :created, location: @senha }
       format.html { render :new }
      else
        format.html { render :new }
        format.json { render json: @senha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senhas/1
  # PATCH/PUT /senhas/1.json
  def update
    respond_to do |format|
      if @senha.update(senha_params)
        format.html { redirect_to @senha, notice: 'Senha was successfully updated.' }
        format.json { render :show, status: :ok, location: @senha }
      else
        format.html { render :edit }
        format.json { render json: @senha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senhas/1
  # DELETE /senhas/1.json
  def destroy
    @senha.destroy
    respond_to do |format|
      format.html { redirect_to senhas_url, notice: 'Senha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_senha
      @senha = Senha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def senha_params
      params.require(:senha).permit(:comanda)
    end
end
