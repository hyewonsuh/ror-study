class Cart < ActiveRecord::Base
                        #  (cascade delete)
  has_many :line_items, dependent: :destroy
end
