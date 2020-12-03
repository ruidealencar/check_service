class ServicesController < ApplicationController
  before_action :set_service, only: [:read]


  def index

    @status = Hash.new

    Project.all.each do |p|
      @status[p.project_name.to_sym] = Service.curl(p)
    end

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
