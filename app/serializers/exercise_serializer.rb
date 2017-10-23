# frozen_string_literal: true

class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :sets, :reps, :notes
end
