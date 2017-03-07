class PrincipalController < ApplicationController
  def index
  	 @tb_noticia = HTTParty.get('http://192.168.0.107:8080/spa/noticias',:headers =>{'Content-Type' => 'application/json'})
  	 
  end
end
