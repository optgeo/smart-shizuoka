print <<-EOS
## Smart Shizuoka: list
EOS
`ruby once/tilesets.rb | grep point-cloud`.split("\n").each {|l|
  print <<-EOS
1. <a target="_blank" href="https://optgeo.github.io/smart-shizuoka/?tileset=#{l}">#{l.split('/')[-3..-2].join('/')}</a>
  EOS
}
