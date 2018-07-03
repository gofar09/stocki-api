class PriceSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :price, :volume
end
