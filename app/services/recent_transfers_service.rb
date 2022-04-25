class RecentTransfersService
  # def initialize
  #   @store_limit = 5      # how many posts should be kept
  #   @key = "recent_transfers" # redis @key
  # end

  # def list(limit = @store_limit)
  #   $redis.lrange(@key, 0, limit-1).map do |raw_transfer|
  #     JSON.parse(raw_transfer).with_indifferent_access
  #   end
  # end

  # def push(raw_transfer)
  #   $redis.lpush(@key, raw_transfer)
  #   $redis.ltrim(@key, 0, @store_limit-1)
  # end

  def initialize
    
  end

  def list
    
  end

  def push
    
  end
end