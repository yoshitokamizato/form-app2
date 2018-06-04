module UserDecorator
  def programming_status
    skils.delete_if(&:empty?)
  end
end
