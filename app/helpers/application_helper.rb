module ApplicationHelper

  def show_if_signedin(arg, arg2)
    signed_in? ? arg : arg2
  end
end
