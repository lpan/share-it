module Paginatable
  extend ActiveSupport::Concern

  protected

  def render_with_pagination(list:)
    render json: list, meta: pagination_info(total_count: list.length)
  end

  def offset
    params[:offset] || OFFSET
  end

  def limit
    params[:limit] || LIMIT
  end

  private

  LIMIT = 25
  OFFSET = 0

  def pagination_info(total_count:)
    {
      total_count: total_count,
      offset: offset,
      limit: limit
    }
  end
end
