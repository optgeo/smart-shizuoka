print <<-EOS
## Smart Shizuoka: list
EOS
`ruby once/tilesets.rb | grep point-cloud`.split("\n").each {|l|
  print <<-EOS
1. [#{l.split('/')[-3..-2].join('/')}](https://optgeo.github.io/smart-shizuoka/?#{l})
  EOS
}
