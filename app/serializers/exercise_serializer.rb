class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :sets, :reps, :notes
end
