class Event < ApplicationRecord
  has_many :orders

  delegate :url_helpers, to: 'Rails.application.routes'

  default_scope { order(start_date: :asc) }

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
