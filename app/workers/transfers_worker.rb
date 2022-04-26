class TransfersWorker
  include Sneakers::Worker
  from_queue "world_trader_queue_ping", env: nil

  def work(raw_transfer)
    puts '-----------------entrou no worker do receiver--------------------------'
    puts "Dados vindos do ping: #{raw_transfer}"

    data = ActiveSupport::JSON.decode(raw_transfer).with_indifferent_access

    interactor = RecentTransfersInteractor.new()
    interactor.swipe(data)
    ack!
  end

end
