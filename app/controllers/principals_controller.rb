class PrincipalsController < ApplicationController
before_action :set_principal, only: [:show, :edit, :update, :destroy]

  def index
   @principals = Principal.all
  end

  def show
  end

  def new
    @principal = Principal.new
  end

  def create
    @principal = Principal.new(principal_params)
    if @principal.save
      redirect_to @principal
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @principal.update(principal_params)
        redirect_to @principal
      else
        render 'edit'
      end
  end

  def destroy
    if @principal.destroy
      redirect_to @principal
    end
  end

  def set_principal
    @principal = Principal.find(params[:id])
  end
  private
    def principal_params
      params.require(:principal).permit(:name, :education,:specialization,:gender,:phone)
    end
end
