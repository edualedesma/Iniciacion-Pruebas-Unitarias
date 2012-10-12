require 'rake/testtask'

task :default => [:test]

desc "Ejecuta todos los test a la vez"
Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/tc_*.rb']
    t.verbose = true
end