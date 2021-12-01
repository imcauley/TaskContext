module Mutations
    class EditTask < BaseMutation
        description "Edits a task"

        argument :id, String, required: true
        argument :name, String, required: false
        argument :description, String, required: false
        argument :finished, String, required: false
    
        type Types::ContextType
    
        def resolve(id: nil, name: nil, description: nil, finished: nil)
            task = Task.find(id)
            name = name.? : task.name : name
            name = description.? : task.description : description
            name = finished.? : task.finished : finished

            task.update(
                name: name,
                description: description,
                finished: finished
            )
        end
    end
end    