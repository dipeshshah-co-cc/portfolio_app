class Investment < ActiveRecord::Base
  belongs_to :company
  belongs_to :portfolio

  validate :quantity_should_be_positive
    def quantity_should_be_positive
      if qty < 0
        errors.add :qty, 'Should be +ve'
      end
    end

  validate :cost_should_be_positive
  def cost_should_be_positive
    if cost < 0
      errors.add :cost, 'Should be +ve'
    end
  end
end
