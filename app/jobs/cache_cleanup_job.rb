class CacheCleanupJob < ApplicationJob
  queue_as :low_priority

  def perform
    CacheService.new.cleanup
  end
end
