module CurriculumsHelper
  def dispPrice(price)
    price.to_s(:delimited)
  end
end
