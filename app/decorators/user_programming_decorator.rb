module UserProgrammingDecorator
  def progressbar(level)
    if level <= 40
      "progress-bar progress-bar-striped bg-danger progress-bar-animated"
    elsif level <= 60
      "progress-bar progress-bar-striped bg-warning progress-bar-animated"
    elsif level <= 80
      "progress-bar progress-bar-striped bg-success progress-bar-animated"
    else
      "progress-bar progress-bar-striped bg-info progress-bar-animated"
    end
  end
end
