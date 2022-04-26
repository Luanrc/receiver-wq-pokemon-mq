class RecentTransfersService
  def initialize
    @connection = Bunny.new(hostname: 'rabbitmq')
    @channel = connection.create_channel
  end

  def send_back(message)
    
    exchange = @channel.fanout("world_trader_pong", durable: true)
    
    puts '--------------enviou os dados para o pong-----------------------------'
    puts "Dados enviados para o ping: #{message}"
    exchange.publish(message.to_json)

    @connection.close
  end

  private

  def connection
    @connection.start
  end
end