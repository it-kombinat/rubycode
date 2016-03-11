#!/usr/bin/ruby
puts "Ruby Calc"
puts "========="
puts

# Endlosschleife starten

loop do
  print "Bitte die erste Zahl:          "
  #Eingabe direkt in Fliesskommazahl umwandeln"
  # und in z1 speichern
  z1 = gets.to_f
  print "Bitte die zweite Zahl:         "
  #Eingabe direkt in Fliesskommazah umwandeln
  # und in z2 speichern
  z2 = gets.to_f
  print "Rechenoperation (+|-|*|/)? "
  # Operation einlesen und anschliessende Zeilenumbruch entfernen
  op = gets.chomp
  #Gueltigkeit des Oprators pruefen
  if op !~ /^[\+\-\*\/]$/
     puts "Ungueltige Operation: #{op}"
     puts
     next
  end
  # Bei Divsion 0 als zweiten Opranden ausschliessen
  if op == "/" && z2 == 0
   puts "Division durch 0 ist verboten"
   puts
   next
  end
 #Ergebniss je nach Operator berechnen
 case op
  when "+"
   ergebnis = z1 + z2
  when "-"
   ergebnis = z1 - z2
  when "*"
   ergebnis = z1 * z2
  when "/"
   ergebnis = z1 / z2
 end

 #Ausgabe des Ergebnisses
 puts "Ergebnis: #{z1} #{op} #{z2} = #{ergebnis}"
 print "Noch eine Berechnung (j/n)? "
 nochmal = gets.chomp
 puts
 break if nochmal =~ /^n/i
end

