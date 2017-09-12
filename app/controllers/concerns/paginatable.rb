module Paginatable
  extend ActiveSupport::Concern

  protected

  LIMIT = 25
  OFFSET = 0

  def offset
    params[:offset] || OFFSET
  end

  def limit
    params[:limit] || LIMIT
  end
end
