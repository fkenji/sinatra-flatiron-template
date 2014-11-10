class Student

  attr_accessor :id, :name, :age, :city, :email

  @@possible_names = [
    "Chuck Norris",
    "John McLane",
    "Lady Gaga",
    "Madonna",
    "Kim Kardashian",
    "Kobe Bryant",
    "Derrick Rose",
    "Tim Duncan",
    "Tyrion Lannister",
    "Mike Tyson",
    "Jon Snow",
    "Tenzin Gyatso",
    "Louis CK",
    "Martin Fowler",
    "Michael Jordan",
    "Michael Fassbender",
  ]

  @@students = []
  8.times do |num|
    @@students << Student.new.tap do |student|
      student.id = num
      student.name = @@possible_names.sample
      student.age = rand(30)
      student.city = Faker::Address.city
      student.email = Faker::Internet.email
    end
  end    

  def jpg_to
    "http://#{@name.gsub(/\s/,'')}.jpg.to"
  end

  def self.all    
    @@students
  end

  def self.find(id)
    @@students[id.to_i]
  end

end