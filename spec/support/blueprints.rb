require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.define do
  description { Faker::Lorem.paragraphs(1) }
  status(:unique => false) {'Open'}
end

Bug.blueprint do
  description
  status
end