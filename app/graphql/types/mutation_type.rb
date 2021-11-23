module Types
  class MutationType < Types::BaseObject
    field :create_context, mutation: Mutations::CreateContext
    field :create_task, mutation: Mutations::CreateTask

    field :add_context_to_task, mutation: Mutations::AddContextToTask
  end
end
