require "bundler/gem_tasks"

desc "Run test"
task :test do
	sh "rspec spec/lib/warray_spec.rb --format documentation" #  --format documentation
end

task :default => [:test]
