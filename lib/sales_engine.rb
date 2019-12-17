require './lib/item'
require './lib/merchant_collection'

class SalesEngine
  attr_reader :item_path, :merchant_path

  def self.from_csv(file_paths)
    item_path = file_paths[:items]
    merchant_path = file_paths[:merchants]

    SalesEngine.new(item_path, merchant_path)
  end

  def initialize(item_path, merchant_path)
    @item_path = item_path
    @merchant_path = merchant_path
  end

  def items
<<<<<<< HEAD
    Item.create_items(@item_path)
=======
    Item.from_csv(@item_path)
    Item.all
>>>>>>> af874c6ea44f0694ef69d69e5501b10135c99a1d
  end

  def merchant_collection
    MerchantCollection.new(@merchant_path)
  end
end
