funciones = File.open("funciones.txt", chomp: true)
lines = funciones.readlines
parseado = File.new("parsed.txt","w")
lines.each {|line|
  line.delete!("\n")
  parseado.puts "<p>&check;#{line}</p>" unless line == ""
}