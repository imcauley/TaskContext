module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :unfinished_tasks, [TaskType], null: false
    field :all_contexts, [ContextType], null: false
    field :all_tasks, [TaskType], null: false

    def all_tasks
      Task.all
    end

    def unfinished_tasks
      Task.where(finished: false)
    end

    def all_contexts
      Context.all
    end
  end
end
