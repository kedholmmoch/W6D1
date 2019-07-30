# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  body    :text             not null
#  poll_id :integer          not null
#
# Indexes
#
#  index_questions_on_poll_id  (poll_id)
#

class Question < ApplicationRecord
  validates :body, presence: true
  validates :poll_id, presence: true

  belongs_to :poll,
  class_name: 'Poll',
  foreign_key: :poll_id,
  primary_key: :id

  has_many :answer_choices,
  class_name: 'AnswerChoice',
  foreign_key: :answer_choice_id,
  primary_key: :id

  has_many :responses,
  through: :answer_choices,
  source: :responses

end
