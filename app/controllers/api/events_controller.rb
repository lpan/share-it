class Api::EventsController < ApiController
  include Paginatable

  def index
    render_with_pagination list: events
  end

  def show
    render json: Event.find(params[:id])
  end

  private

  def events
    @events ||= Event
      .where(user_id: params[:user_id])
      .includes(:time_slots)
      .order(created_at: :desc)
      .limit(limit)
      .offset(offset)
  end
end
