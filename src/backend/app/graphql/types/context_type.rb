module Types
  class ContextType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
  end
end
