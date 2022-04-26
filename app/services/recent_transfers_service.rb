class RecentTransfersService
  def initialize

  end

  def create(transfer)
    Transfer.create(trainer: transfer[:trainer], pokemon: transfer[:pokemon])
  end
end