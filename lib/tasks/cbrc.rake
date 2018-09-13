namespace :cbrc do

  require "#{Rails.root}/lib/tasks/herbarium_batch_import"

  namespace :herbarium_batch_import do
    desc "Import Herbarium records from CSV."
    task :herbarium_batch_import, [:datafile, :owner, :deleteafteringest] => :environment do |task, args|
      Cbrc::HerbariumBatchImport::Tasks::herbarium_batch_import(args.datafile, args.owner, args.deleteafteringest)
    end
  end

end