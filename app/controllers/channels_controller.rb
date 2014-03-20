class ChannelsController < ApplicationController
  
  def show
    @channel  = Channel.find_by_name(params[:channel])
  end
  
end