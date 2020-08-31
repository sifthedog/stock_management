# frozen_string_literal: true

module Error
  module ErrorHandler
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
      end
    end

    private

    def record_not_found(_e)
      render json: { error: 'Record not found'}, status: 404
    end
  end
end
