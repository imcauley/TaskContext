module Mutations
    class CreateContext < BaseMutation
        description "Creates a new context"

        argument :name, String, required: true
    
        type Types::ContextType
    
        def resolve(name: nil)
            Context.where(name: name).where(generated: false).first_or_create
        end
    end
end    