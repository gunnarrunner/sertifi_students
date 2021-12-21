class SertifiService
  def self.get_data(url)
    Faraday.new(url)
  end

  def self.students
    response = get_data("http://apitest.sertifi.net/api/Students").get
    
    JSON.parse(response.body, symbolize_names: true)
  end
end