module ApplicationHelper
  def alert_class_by_type(alert_type)
    case alert_type.to_sym
    when :alert, :danger, :error, :validation_errors
      'alert-danger'
    when :warning, :todo
      'alert-warning'
    when :notice, :success
      'alert-success'
    else
      'alert-info'
    end
  end
end
