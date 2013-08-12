[
  "Ruby",
  "Perl",
  "Python",
  "Visual Basic",
  "PHP",
  "C#",
  "C++",
  "Objective C",
  "Java",
  "C",
  "Node.js",
  "Go",
  "jQuery",
  "Ember.js",
  "PostgresSQL",
  "Redis",
  "Memcache",
  "Websockets",
  "Amazon Web Services",
  "RabbitMQ",
  "AMQP"
].each do |skill|
  TechSkill.find_or_create_by_name(name: skill)
end

[
  "eCommerce",
  "Mobile (apps)",
  "Fintech",
  "Marketplace",
  "Edutech",
  "B2B SaaS",
  "B2B Software",
  "Payment",
  "Others"
].each do |business|
  BusinessType.find_or_create_by_name(name: business)
end

[
  "60K+",
  "80K+",
  "100K+",
  "120K+",
  "150K+",
  "170K+"
].each do |compensation|
  Compensation.find_or_create_by_name(name: compensation)
end

[
  "< 2 members",
  "2 - 5 members",
  "5 - 10 members",
  "10 - 20 members",
  "20 - 100 members",
  "100+ members"
].each do |size|
  TeamSize.find_or_create_by_name(name: size)
end

[
  "Full time",
  "Freelance"
].each do |type|
  PositionType.find_or_create_by_name(name: type)
end

[
  "Immediately",
  "In 3 months",
  "Later this year"
].each do |availability|
  Availability.find_or_create_by_name(name: availability)
end

[
  "Yes, resident",
  "Yes, authorized to work",
  "No"
].each do |permit|
  WorkPermit.find_or_create_by_name(name: permit)
end