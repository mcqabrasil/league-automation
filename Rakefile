require "time"

namespace :mcfadyen do
  task :runtest, [:browser] do |task, args|
    ENV['BROWSER'] = args[:browser]

    time = Time.now.utc.iso8601.tr(":", "")
    report = "--format html --out=log/report_#{time}.html"
    command = "rspec #{report} --backtrace"
    puts command
    sh command

    #Rake::Task['mcfadyen:work'].invoke(args[:browser])
  end

  #task :work, [:option] do |task, args|
  #  puts "work", args
  #end
end