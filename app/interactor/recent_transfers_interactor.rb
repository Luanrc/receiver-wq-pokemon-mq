class RecentTransfersInteractor
  def initialize

  end

  def swipe(external_transfer)
    
    transfer = Transfer.create(trainer: external_transfer[:trainer], pokemon: external_transfer[:pokemon])
    puts '-----------------entrou no interactor do receiver--------------------------'
    puts "Transfer criado com os dados do ping: #{transfer}"

    new_transfer = {
      trainer_id: external_transfer[:id],
      trainer: transfer[:trainer],
      pokemon: "Ditto"
    }

    service = RecentTransfersService.new()
    service.send_back(new_transfer)
  end
end