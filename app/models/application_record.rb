# frozen_string_literal: true

# abstract base class for all models
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
