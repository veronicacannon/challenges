# frozen_string_literal: true

def expensive_orders(hash, k)
  hash.select { |_k, v| v > k }
end
