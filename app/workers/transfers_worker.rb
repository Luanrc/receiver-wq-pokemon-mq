class TransfersWorker
  include Sneakers::Worker
  from_queue "world_trader_queue", env: nil

  def work(raw_transfer)
    data = ActiveSupport::JSON.decode(raw_transfer).with_indifferent_access
    service = RecentTransfersService.new()
    service.create(data)
    ack!
  end

end
