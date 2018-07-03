class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :shares, :user_id
end
