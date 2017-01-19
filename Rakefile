# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'fileutils'
desc "Create nondigest versions of all ckeditor digest assets"
task ckeditor: :environment do
  fingerprint = /\-[0-9a-f]{32}\./
  for file in Dir["public/assets/ckeditor/**/*"]
    next unless file =~ fingerprint
    nondigest = file.sub fingerprint, '.'
    FileUtils.cp file, nondigest, verbose: true
  end
end

Rails.application.load_tasks
