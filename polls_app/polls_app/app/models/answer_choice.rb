# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  option      :text             not null
#  question_id :integer          not null
#
# Indexes
#
#  index_answer_choices_on_question_id  (question_id)
#

class AnswerChoice < ApplicationRecord
  validates :option, presence: true
  validates :question_id, presence: true

  belongs_to :question,
  class_name: 'Question',
  foreign_key: :question_id,
  primary_key: :id

  has_many :responses,
  class_name: 'Response',
  foreign_key: :answer_choice_id,
  primary_key: :id

end
