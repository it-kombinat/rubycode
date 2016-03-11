#!/usr/bin/ruby -w
class ModText
  def initialize(txt = "")
   @txt = txt
  end
 # Enthaltenen Text nachträglich aendern
 def set_text(txt = "")
  @txt = txt
 end
 #Text zurückliefern
 def get_text
  @txt
 end
 #Als Text-Entsprechung des Objekts 
 #ebenfalss den Text zuruekliefern
 def to_s
  get_text
 end
 #Text rueckwaerts zuruekliefern
 def turn
  @txt.reverse
 end
 #Text mit * statt Vokalen zuruekliefern
 def hide_vowels
 @txt.gsub(/[aeiou]/i, "*")
 end
 #Text in "Casear-Code" zuruekliefern
 def rot13
  @txt.tr("[A-Z][a-z]", "[N-ZA-M][m-za-m]")
 end
end
#Neues ModText-Objekt mit Inhalt erzeugen
mtext = ModText.new("Hallo, meine liebe Welt!")
ftext = ModText.new("Hallo, ich suche eine zweite Welt")
#Ausgabe der verschieden Methoden
printf "Orginaltext: 		%s\n", mtext.get_text
printf "Umgekehrt: 		%s\n", mtext.turn
printf "Versteckte Vokale: 	%s\n", mtext.hide_vowels
printf "ROT13: 			%s\n", mtext.rot13
printf "NEW: 			%s\n", ftext

#Text change
mtext.set_text("Diese Worte sind neu!")

# Ausgabe des Objekts als Text
# ruft automatisch to_s auf
printf "Neuer Text:		%s\n", ftext.get_text
printf "Neuer Text, REVERSE		%s\n", ftext.turn
