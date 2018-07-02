class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :name, :shares, :user_id
end
