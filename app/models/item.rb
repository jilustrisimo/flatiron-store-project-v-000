class Item < ActiveRecord::Base
  include Readable::InstanceMethods

  has_many :line_items
  belongs_to :category

  def self.available_items
    where('inventory > 0')
  end
end
