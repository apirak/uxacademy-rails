class Event < ApplicationRecord
  delegate :url_helpers, to: 'Rails.application.routes'

  def detail_url
    if start_date > Date.today
      if url.blank?
        url_helpers.event_path(self)
      else
        url
      end
    else
      return url_gallery
    end
  end

  def expired?
    start_date < Date.today
  end

end
