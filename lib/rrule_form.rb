require "rrule_form/version"

module RruleForm
  class Error < StandardError; end

  class Engine < ::Rails::Engine
    isolate_namespace RruleForm

    initializer "rrule_form.action_view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include RruleForm::ApplicationHelper
      end
    end
  end
end
