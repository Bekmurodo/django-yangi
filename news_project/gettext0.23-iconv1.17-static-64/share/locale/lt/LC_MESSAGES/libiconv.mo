��    /      �  C           C     9   ]  o   �  B     m   J  ?   �  \   �  ;   U  P   �  [   �     >  @   A  N   �  J   �  D     d   a  �   �  :   a	     �	     �	     �	  0   �	     �	  5   
  	   ;
     E
  �   Z
  )     "   .  1   Q  <   �  &   �  A   �  ;   )     e  /   u  7   �  3   �  :     ;   L  $   �     �     �     �     �  2       :  Q   O  V   �  T   �  ]   M  f   �  P     _   c  =   �  N     ^   P     �  C   �  @   �  ?   7  C   w  a   �      ;   +     g     �      �  4   �     �  +   �          6  �   D  2   *  (   ]  5   �  R   �  C     Q   S  Y   �     �  4     ?   K  ?   �  @   �  M     2   Z  &   �  %   �     �     �  G              -                	   .          '                  
   !   ,                       )          &               #                         "           /                            %          (                $      *   +                --byte-subst=FORMATSTRING   substitution for unconvertible bytes
   --help                      display this help and exit
   --unicode-subst=FORMATSTRING
                              substitution for unconvertible Unicode characters
   --version                   output version information and exit
   --widechar-subst=FORMATSTRING
                              substitution for unconvertible wide characters
   -c                          discard unconvertible characters
   -f ENCODING, --from-code=ENCODING
                              the encoding of the input
   -l, --list                  list the supported encodings
   -s, --silent                suppress error messages about conversion problems
   -t ENCODING, --to-code=ENCODING
                              the encoding of the output
 %s %s argument: A format directive with a size is not allowed here. %s argument: A format directive with a variable precision is not allowed here. %s argument: A format directive with a variable width is not allowed here. %s argument: The character '%c' is not a valid conversion specifier. %s argument: The character that terminates the format directive is not a valid conversion specifier. %s argument: The format string consumes more than one argument: %u argument. %s argument: The format string consumes more than one argument: %u arguments. %s argument: The string ends in the middle of a directive. %s: I/O error %s:%u:%u %s:%u:%u: cannot convert %s:%u:%u: incomplete character or shift sequence (stdin) Converts text from one encoding to another encoding.
 I/O error Informative output:
 License GPLv3+: GNU GPL version 3 or later <%s>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Options controlling conversion problems:
 Options controlling error output:
 Options controlling the input and output format:
 Report bugs in the bug tracker at <%s>
or by email to <%s>.
 Try '%s --help' for more information.
 Usage: %s [OPTION...] [-f ENCODING] [-t ENCODING] [INPUTFILE...]
 Usage: iconv [-c] [-s] [-f fromcode] [-t tocode] [file ...] Written by %s.
 cannot convert byte substitution to Unicode: %s cannot convert byte substitution to target encoding: %s cannot convert byte substitution to wide string: %s cannot convert unicode substitution to target encoding: %s cannot convert widechar substitution to target encoding: %s conversion from %s to %s unsupported conversion from %s unsupported conversion to %s unsupported or:    %s -l
 or:    iconv -l try '%s -l' to get the list of supported encodings Project-Id-Version: GNU libiconv 1.17-pre1
Report-Msgid-Bugs-To: bug-gnu-libiconv@gnu.org
PO-Revision-Date: 2023-07-14 16:54+0300
Last-Translator: Rimas Kudelis <rimas@kudelis.lt>
Language-Team: Lithuanian <komp_lt@konferencijos.lt>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Bugs: Report translation errors to the Language-Team address.
X-Generator: Poedit 3.0.1
   --byte-subst=EILUTĖ         pakaitalas baitams, kurių perkodavimas negalimas
   --help                      parodyti šį informacinį pranešimą ir baigti darbą
   --unicode-subst=EILUTĖ      pakaitalas simboliams, kurių perkodavimas negalimas
   --version                   parodyti informaciją apie programos versiją ir baigti darbą
   --widechar-subst=EILUTĖ     pakaitalas „platiesiems“ simboliams, kurių perkodavimas negalimas
   -c                          praleisti simbolius kurių perkodavimas negalimas
   -f KODUOTĖ, --from-code=KODUOTĖ
                              įvesties simbolių koduotė
   -l, --list                  išvardyti palaikomas koduotes
   -s, --silent                neišvesti pranešimų apie perkodavimo klaidas
   -t KODUOTĖ, --to-code=KODUOTĖ
                              išvesties simbolių koduotė
 %s %s argumentas: Apibrėžto dydžio formato direktyva čia negalima. %s argumentas: Kintamo tikslumo formato direktyva čia negalima. %s argumentas: Kintamo pločio formato direktyva čia negalima. %s argumentas: Simbolis „%c“ nėra tinkamas konversijos žymuo. %s argumentas: Simbolis, kuriuo užbaigiama formato direktyva, nėra tinkamas konversijos žymuo. %s argumentas: Formato eilutei reikalingas daugiau nei vienas argumentas (%u argumentas). %s argumentas: Formato eilutei reikalingas daugiau nei vienas argumentas (%u argumentai). %s argumentas: Formato eilutei reikalingas daugiau nei vienas argumentas (%u argumentų). %s argumentas: Teksto eilutė baigiasi direktyvos viduryje. %s: Įvesties/išvesties klaida %s:%u:%u %s:%u:%u: perkodavimas negalimas %s:%u:%u: neužbaigtas simbolis arba pastūmimo seka (stdin) Programa teksto simbolių koduotei keisti.
 Įvesties/išvesties klaida Informacija:
 Licencija GPLv3+: GNU GPL 3 ar vėlesnė versija <%s>
Tai – laisvoji programinė įranga. Jums leidžiama ją laisvai modifikuoti ir platinti.
Šiai programinei įrangai NETAIKOMA JOKIA GARANTIJA, kiek tai leidžia įstatymai.
 Parametrai teksto perkodavimo problemų valdymui:
 Parametrai klaidų išvesties valdymui:
 Parametrai įvesties ir išvesties formato valdymui:
 Prašome klaidas registruoti adresu <%s>
arba pranešti apie jas el. paštu <%s>.
 Bandykite „%s --help“, jeigu norite išsamesnės informacijos.
 Naudojimas: %s [PARAMETRAS...] [-f KODUOTĖ] [-t KODUOTĖ] [ĮVESTIES_FAILAS...]
 Naudojimas: iconv [-c] [-s] [-f šaltinio_koduotė] [-t išvesties_koduotė] [failas ...] Programą parašė %s
 baitų pakaitos nepavyko konvertuoti į Unikodą: %s baitų pakaitos nepavyko konvertuoti į paskirties koduotę: %s baitų pakaitos nepavyko konvertuoti į plačiąją eilutę: %s Unikodo pakaitos nepavyko konvertuoti į paskirties koduotę: %s plačiosios eilutės pakaitos nepavyko konvertuoti į paskirties koduotę: %s perkodavimas iš „%s“ į „%s“ nepalaikomas perkodavimas iš „%s“ nepalaikomas perkodavimas į „%s“ nepalaikomas arba:       %s -l
 arba:       iconv -l pasinaudokite komanda „%s -l“ palaikomų koduočių sąrašui gauti 