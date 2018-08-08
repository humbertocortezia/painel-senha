class ExibirController < ApplicationController
    layout "exibicao"

  def index
    @senhas = Senha.last
  end


end
