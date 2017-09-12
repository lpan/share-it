module Paginatable
  extend ActiveSupport::Concern

  def render_with_pagination(list:)
    render json: paginate(list), meta: pagination_info(total_count: list.length)
  end

  private

  LIMIT = 25
  OFFSET = 0

  def offset
    (params[:offset] || OFFSET).to_i
  end

  def limit
    (params[:limit] || LIMIT).to_i
  end

  def paginate(list)
    list.offset(offset).limit(limit)
  end

  def pagination_info(total_count:)
    {
      total_count: total_count,
      offset: offset,
      limit: limit
    }
  end
end
