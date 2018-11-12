class ServicesController < ApplicationController
  before_action :set_service, only: [:read]


  def index
    require 'net/ping'
    todos_projetos = Project.all
    @status = Hash.new
    # raise Project.all.inspect
    Net::Ping::TCP.econnrefused = true
    @status = Hash.new
    ping_obj = Net::Ping::TCP.new('presenca.pge.ce.gov.br/dashboard')
    
    # servico_on = ping_obj.ping?
    # raise servico_on.inspect

    

    todos_projetos.each do |projeto|
      @status[projeto.project_name.to_sym] = ping_obj.ping?
      # raise ping_obj.ping.inspect
    end

    
    


    # raise teste.inspect




    # @status = Hash.new
    # todos_projetos = Project.where(id: 7)

    # todos_projetos = Project.all

    # # raise todos_projetos.inspect
    
    # todos_projetos.each do |projeto|
    #   @status[projeto.project_name.to_sym] = Service.servidor_online(projeto)
    # end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:projects, :status)
    end
end
