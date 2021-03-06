require 'dotenv/load'

require 'google/apis/sheets_v4'

APPLICATION_NAME = 'Google Sheets API Ruby Quickstart'

# Initialize the API
service = Google::Apis::SheetsV4::SheetsService.new
service.client_options.application_name = APPLICATION_NAME
service.key = ENV['API_KEY']

# Prints the names and majors of students in a sample spreadsheet:
# https://docs.google.com/spreadsheets/d/1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms/edit
spreadsheet_id = '1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms'
range = 'Class Data!A2:E'
response = service.get_spreadsheet_values(spreadsheet_id, range)
puts 'Name, Major:'
puts 'No data found.' if response.values.empty?
response.values.each do |row|
  # Print columns A and E, which correspond to indices 0 and 4.
  puts "#{row[0]}, #{row[4]}"
end
