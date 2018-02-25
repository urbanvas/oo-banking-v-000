class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :balance

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      if @sender.valid? == true && @sender.balance >= @amount
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
    # @receiver.status = "complete"
  end
end
end

end
