module Types
  class MutationType < Types::BaseObject
    field :create_context, mutation: Mutations::CreateContext
    field :create_task, mutation: Mutations::CreateTask
  end
end
