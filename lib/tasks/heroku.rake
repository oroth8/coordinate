# frozen_string_literal: true

namespace :heroku do
  task release: ['db:migrate']
end