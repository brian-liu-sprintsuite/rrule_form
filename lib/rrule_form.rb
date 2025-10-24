require "rrule_form/version"

module RruleForm
  class Error < StandardError; end

  class Engine < ::Rails::Engine
    isolate_namespace RruleForm

    ActiveSupport.on_load(:action_controller_base) do
      helper RruleForm::ApplicationHelper
    end
  end
end
