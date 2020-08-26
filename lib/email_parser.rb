# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 

  def initialize(list)
    @list = list
  end

  def parse
    email_array = @list.split(" ")
    email_array.map! { |str| str.chomp(",")}
    email_array.uniq!
    return email_array
  end

end

