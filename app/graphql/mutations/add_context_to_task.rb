module Mutations
    class AddContextToTask < BaseMutation
        argument :task_id, ID, required: true
        argument :context_id, ID, required: true

        type Types::TaskType

        def resolve(task_id: nil, context_id: nil)
            TaskContext.where(task_id: task_id).where(context_id: context_id).first_or_create
            
            Task.find(task_id)
        end
    end
end