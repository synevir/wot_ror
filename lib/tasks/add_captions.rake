namespace :db do
  desc "Add to database ColumnHeader captions"
  task add_captions: :environment do
    caption = ColumnHeader.create!(
                 name: 'score_for_capture_average',
              caption: 'за захват')
    caption2 = ColumnHeader.create!(
                 name: 'score_for_protected',
              caption: 'сбитие захвата')
  end
end