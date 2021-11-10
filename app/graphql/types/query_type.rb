module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :unfinished_tasks, [TaskType], null: false
    field :all_contexts, [ContextType], null: false

    def unfinished_tasks
      Task.all
    end

    def all_contexts
      Context.all
    end
  end
end
