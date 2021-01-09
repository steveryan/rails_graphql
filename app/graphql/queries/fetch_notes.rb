module Queries
  class FetchNotes < Queries::BaseQuery

    type [Types::NoteType], null: false
    argument :direction, String, required: false

    def resolve(direction: nil)
      (direction && direction == 'asc') ? Note.all.order(created_at: :asc) : Note.all.order(created_at: :desc)
    end
  end
end