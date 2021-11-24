module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :finished, Boolean, null: false
    field :contexts, [Types::ContextType], null: false
  end
end
