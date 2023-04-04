require 'json'

catalog = JSON.parse(`curl --silent https://tokyo-digitaltwin.s3.ap-northeast-1.amazonaws.com/catalog/release20221018.json`)

def process_entry(entry)
  if entry['type'] == 'group'
    entry['members'].each {|entry|
      process_entry(entry)
    }
  else
    # print entry['name'], entry['type'], "\n"
    if entry['type'] == '3d-tiles'
      url = entry['url'].sub('/proxy/_1s/', '')
      print url, "\n"
    end
  end
end

catalog['catalog'].each {|entry|
  process_entry(entry)
}
