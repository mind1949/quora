class SuisuiniansController < ApplicationController

  def index
    @suisuinian = Suisuinian.all
    @nsuisuinian= Suisuinian.new
  end

  def new
    @suisuinian=Suisuinian.new
  end

  def create
    @suisuinian= Suisuinian.new(suisuinian_params)
    @suisuinian.save

    redirect_to suisuinians_path
  end

  def edit
    @suisuinian=Suisuinian.find(params[:id])
  end

  def update
    @suisuinian=Suisuinian.find(params[:id])
    @suisuinian.update(suisuinian_params)

    redirect_to suisuinians_path
  end

  def destroy
    @suisuinian=Suisuinian.find(params[:id])
    @suisuinian.destroy

    redirect_to suisuinians_path
  end

  def show
    @suisuinian=Suisuinian.find(params[:id])
  end


  private

  def suisuinian_params
    params.require(:suisuinian).permit(:title,:description)
  end

end
