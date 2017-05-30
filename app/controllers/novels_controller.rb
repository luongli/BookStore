class NovelsController < ApplicationController
  def index
    if params.has_key?(:page)
      @novels = Novel.order('created_at DESC').page(params[:page]).per(20)
    else
      @novels = Novel.order('created_at DESC').page(1).per(20)
    end
  end

  def show
    @novel = Novel.find params[:id]
  end
end
