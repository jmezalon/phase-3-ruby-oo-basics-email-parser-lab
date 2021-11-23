# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    def initialize(email_list)
        @email_list = email_list
    end

    def parse 
        if @email_list.include?(' ')
            @formatted = @email_list.split
        elsif @email_list.include?(',')
            @formatted = @email_list.split
        end
        @formatted.map { |w| w.gsub(',', '').strip }.uniq
    end
end
