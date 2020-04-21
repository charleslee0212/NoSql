#---
# Excerpted from "Seven Databases in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/pwrdata for more book information.
#---

require 'time'

import 'org.apache.hadoop.hbase.client.HTable'
import 'org.apache.hadoop.hbase.client.Put'
import 'javax.xml.stream.XMLStreamConstants'

def jbytes(*args)
  args.map { |arg| arg.to_s.to_java_bytes }
end

factory = javax.xml.stream.XMLInputFactory.newInstance
reader = factory.createXMLStreamReader(java.lang.System.in)

document = nil
buffer = nil
count = 0

table = HTable.new(@hbase.configuration, 'foods')
table.setAutoFlush(false)

while reader.has_next
  type = reader.next

  if type == XMLStreamConstants::START_ELEMENT

    case reader.local_name
    when 'Food_Display_Row' then document = {}
    when /Food_Code|Display_Name|Calories|Saturated_Fats/ then buffer = []
    end

  elsif type == XMLStreamConstants::CHARACTERS

    buffer << reader.text unless buffer.nil?

  elsif type == XMLStreamConstants::END_ELEMENT

    case reader.local_name
    when /Food_Code|Display_Name|Calories|Saturated_Fats/
      document[reader.local_name] = buffer.join

      key = document['Food_Code'].to_java_bytes

      p = Put.new(key)
      p.add(*jbytes("name", "", document['Display_Name']))
      p.add(*jbytes("calories", "", document['Calories']))
      p.add(*jbytes("saturated fats", "", document['Saturated_Fats']))
      table.put(p)

      count += 1
      table.flushCommits() if count % 10 == 0
      if count % 10 == 0
        puts "#{count} records inserted (#{document['Food_Code']})"
      end
    end
  end
end

table.flushCommits()
exit
