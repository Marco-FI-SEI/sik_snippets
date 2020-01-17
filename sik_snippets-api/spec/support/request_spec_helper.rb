module RequestSpecHelper
  # JSON is parsed to a Ruby hash
  def json
    JSON.parse(response.body)
  end
end
