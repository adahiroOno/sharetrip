module ApplicationHelper

  def calc_date(detail)
    start_date = detail.minimum(:start_date)
    close_date = detail.maximum(:close_date)
    if start_date.present? && close_date.present?
      start_trip = DateTime.parse(start_date.beginning_of_day.strftime("%Y-%m-%d"))
      end_trip = DateTime.parse(close_date.end_of_day.strftime("%Y-%m-%d")) 
      (end_trip - start_trip).numerator
    else
      0
    end
  end
end
