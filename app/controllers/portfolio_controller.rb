class PortfolioController < ApplicationController
  def index
    render "portfolio/index"
  end

  def brands
    render "portfolio/brands"
  end

  def services
    render "portfolio/services"
  end


end
