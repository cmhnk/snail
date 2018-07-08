class ApplicationController < ActionController::Base
  # So controllers can find ERB partials in the frontend directory
  prepend_view_path Rails.root.join("frontend")
end
