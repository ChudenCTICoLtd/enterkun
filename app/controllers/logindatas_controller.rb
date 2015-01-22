class LogindatasController < ApplicationController
  def new
    @eigyosyos = Eigyosyo.all
    if params[:kyoukaicode].nil?
      @chosains = Chosain.all
    else
      @chosains = Chosain.where(kyoukaicode: params[:kyoukaicode])
    end

  end
  

  def create
    session[:whoami_kyoukaicode]  = params[:logindata][:whoami_kyoukaicode]
    session[:whoami_id]  = params[:logindata][:whoami_id]
    session[:when_year]  = params[:logindata][:when_year]
    session[:when_month] = params[:logindata][:when_month]
  end
 
  def destroy
    reset_session
    redirect_to signin_path
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def logindatas_params
    params.require(:logindata).permit(:kyoukaicode)
  end
 

end
