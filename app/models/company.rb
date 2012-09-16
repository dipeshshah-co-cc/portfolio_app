class Company < ActiveRecord::Base
  validate :company_symbol_3or4

  def company_symbol_3or4
    if symbol.length < 3 || symbol.length >4
      errors.add :symbol, 'Should be of length 3 or 4'
    end
  end
end
