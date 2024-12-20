��    /      �  C           C     9   ]  o   �  B     m   J  ?   �  \   �  ;   U  P   �  [   �     >  @   A  N   �  J   �  D     d   a  �   �  :   a	     �	     �	     �	  0   �	     �	  5   
  	   ;
     E
  �   Z
  )     "   .  1   Q  <   �  &   �  A   �  ;   )     e  /   u  7   �  3   �  :     ;   L  $   �     �     �     �     �  2     �  :  O   �  D   ;  u   �  N   �  u   E  J   �  P     >   W  e   �  M   �     J  _   M  W   �  T     U   Z  b   �  �     =   �     �     �       8        W  3   _  
   �     �  �   �  3   j  .   �  9   �  s     2   {  A   �  E   �     6  =   F  I   �  A   �  F     U   W  1   �  )   �  !   	     +     9  @   I           -                	   .          '                  
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
PO-Revision-Date: 2022-07-05 00:10+0200
Last-Translator: Stéphane Aulery <lkppo@free.fr>
Language-Team: French <traduc@traduc.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=2; plural=(n > 1);
   --byte-subst=FORMAT         substitution pour les octets non convertissables
   --help                      affiche ce message d'aide et terminer
   --unicode-subst=FORMAT
                              substitution pour les caractères Unicode non convertissables
   --version                   affiche les informations de version et terminer
   --widechar-subst=FORMAT
                              substitution pour les caractères larges non convertissables
   -c                          écarte les caractères non convertissables
   -f CODAGE, --from-code=CODAGE
                              codage en entrée
   -l, --list                  afficher les codages supportés
   -s, --silent                supprime les messages d'erreur concernant les problèmes de conversion
   -t CODAGE, --to-code=CODAGE
                              codage en sortie
 %s argument %s: Une directive de format comportant une taille n'est pas autorisée à cet endroit. argument %s: Une directive de format avec précision variable n'est pas autorisée ici. argument %s: Une directive de format avec largeur variable n'est pas autorisée ici. argument %s: Le caractère « %c » n'est pas un spécificateur de conversion valide. argument %s: Le caractère qui termine le format n'est pas un spécificateur de conversion valide. argument %s: La chaîne de format consomme plus d'un argument: %u argument. argument %s: La chaîne de format consomme plus d'un argument: %u arguments. argument %s: La chaîne se termine au milieu d'une directive. %s: erreur E/S %s:%u:%u %s:%u:%u: ne peut convertir %s:%u:%u: caractère incomplet ou séquence de décalage (stdin) Convertit du texte d'un codage à un autre codage.
 erreur E/S Options d'aide:
 Licence GPLv3+: GNU GPL version 4 ou ultérieure <%s>
Ce logiciel est libre: vous pouvez le modifier et le redistribuer.
Il n'y a PAS DE GARANTIE, selon les limites permises par la loi.
 Options contrôlant les problèmes de conversion :
 Options contrôlant l'affichage des erreurs :
 Options contrôlant les formats d'entrée et de sortie :
 Signaler toute erreur à <%s>
ou par email à <%s>.
Pour les erreurs de traduction,
écrire à <traduc@traduc.org>
 Essayez « %s --help » pour plus d'informations.
 Usage: %s [OPTION...] [-f ENCODING] [-t ENCODING] [INPUTFILE...]
 Usage: iconv [-c] [-s] [-f code_source] [-t code_cible] [fichier ...] Écrit pas %s.
 ne peut convertir les octets de substitution vers Unicode: %s ne peut convertir les octets de substitution dans le codage de sortie: %s ne peut convertir les octets de substitution en chaîne large: %s ne peut convertir la substitution Unicode dans le codage de sortie: %s ne peut convertir les caractères larges de substitution dans le codage de sortie: %s conversion à partir de %s vers %s non supportée conversion à partir de %s non supportée conversion vers %s non supportée ou:    %s -l
 ou:    iconv -l essayez « %s -l » pour obtenir la liste des codages supportés 