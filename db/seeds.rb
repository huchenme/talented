puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' },
  { :name => 'developer' },
  { :name => 'employer' }
], :without_protection => true)