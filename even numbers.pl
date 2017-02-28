use strict;
use warnings;


sub pare {
  my $no = shift;
  if ($no > 1) {
    # calculeza elementul curent in functie 
    # de elemelentul anterior
    # elementul anterior = 6 + 2 = 8;
    print $no - 1 + 2,"\n";
    return pare($no - 1) + 2;
  } else {
    # opreste functia;
    return 0;
  }
 
}
  

&pare(5);