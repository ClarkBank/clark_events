module Clark
  module Event
    class Model
      include Mongoid::Document

      field :name, type: String
      field :payload, type: Hash
    end
  end
end
