class ProxyRequestJob < ApplicationJob
  queue_as :default

  def perform(service, endpoint, params = {}, headers = {})
    case service
    when :anilist
      AnilistService.new.fetch(endpoint, params, headers)
    when :mangadex
      MangadexService.new.fetch(endpoint, params, headers)
    else
      Rails.logger.warn "Unknown service: #{service}"
    end
  end
end
