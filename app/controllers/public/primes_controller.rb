class Public::PrimesController < ApplicationController

  def new
    @prime = Prime.new
  end

  def create
    @prime = Prime.new(prime_params)
    @prime.save
  end

  def answer
    @prime = Prime.find(params[:id])
  end

end
