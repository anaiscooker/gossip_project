class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(user_params)
    if @gossip.save
      flash[:success] = "You created a gossip !"
      redirect_to gossips_path
    else
      puts "Oh shit"
      render 'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(user_params)
      redirect_to @gossip
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end

end
