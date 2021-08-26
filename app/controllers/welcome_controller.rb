class WelcomeController < ApplicationController
  def index
    # Se obtiene la ip del cliente
    @ip = request.remote_ip

    # Se registra la ip si esta no se ha registrado
    @visitor = Visitor.create(ip: @ip)

    # Se cuenta el numero de visitas      
    @visitors = Visitor.all.count    
  end
end
