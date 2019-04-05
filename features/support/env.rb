
ENV['log'] = 'debug'

before do
  DatabaseHelper.start
end

after do
  DatabaseHelper.clean_up
end