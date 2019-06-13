module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter_by(params)
      params.to_h.inject(all) do |result, (key, value)|
        next result unless respond_to?(key)

        if value =~ /\Atrue\z/ || value.equal?(true)
          result.public_send(key)
        else
          value.present? ? result.public_send(key, value) : result
        end
      end
    end
  end
end
