# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def flash_class(level)
    case level.to_sym
    when :notice
      "bg-blue-100 text-blue-900 border-blue-900 focus:ring-blue-400"
    when :success
      "bg-green-100 text-green-900 border-green-900"
    when :alert
      "bg-red-100 text-red-900 border-red-900"
    when :error
      "bg-red-100 text-red-900 border-red-900"
    else
      "bg-blue-100 text-blue-900 border-blue-900"
    end
  end

  def flash_close_btn_class(level)
    case level.to_sym
    when :notice
      "bg-blue-200 text-blue-500 focus:ring-blue-400 hover:bg-blue-300"
    when :success
      "bg-green-200 text-green-500 focus:ring-green-400 hover:bg-green-300"
    when :alert
      "bg-red-200 text-red-500 focus:ring-red-400 hover:bg-red-300"
    when :error
      "bg-red-200 text-red-500 focus:ring-red-400 hover:bg-red-300"
    else
      "bg-red-200 text-red-500 focus:ring-red-400 hover:bg-red-300"
    end
  end
end
