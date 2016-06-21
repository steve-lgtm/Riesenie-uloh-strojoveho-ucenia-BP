let rec funkcia n v = 
  if n = 0 then
    v
  else
    funkcia (n/10) (v * (n mod 10)) ;;

Printf.printf "Zadat cislo: %!";;

let n = read_int ()
in Printf.printf "Zadane je %d a vysledok je %d\n%!" n (funkcia n 1);;
