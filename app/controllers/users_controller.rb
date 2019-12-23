class UsersController < ApplicationController
  def index
  end

  def show
    @user = Hash.new
      if params[:username] == 'soushiy'
        @user[:name] = 'Soushi Yamamoto'
        @user[:username] = 'soushiy'
        @user[:location] = 'Tokyo, Japan'
        @user[:about] = 'Hello.'
      elsif params[:username] == 'tarot'
        @user[:name] = 'Taro Tanaka'
        @user[:username] = 'tarot'
        @user[:location] = 'Yamaguchi, Japan'
        @user[:about] = 'I'm Taro.'
      end
  end
end
