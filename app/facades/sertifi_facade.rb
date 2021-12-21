class SertifiFacade
  def self.student
    service = SertifiService.students
    
    service.map do |hash|
      Student.new(hash)
    end
  end
end