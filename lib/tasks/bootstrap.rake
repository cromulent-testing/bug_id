desc "Get the required gems"
task :bootstrap do
  begin
    sh 'command -v bundle >/dev/null'
  rescue
    puts "==Installing bundler"
    sh 'gem install bundler'
  end

  puts "==Installing gems"
  sh 'bundle install'
end