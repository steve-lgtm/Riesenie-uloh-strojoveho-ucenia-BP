#include <stdio.h>

int vypocet(int n) {
	int v =1;
	while (n > 0) {
		v = v * (n % 10);
		n = n / 10;
		printf("n=%d,v=%d\n",n,v);
	}
	printf("=============\n");
	return v;
}

int main(){
	int cislo;
	printf("\n Zadat cislo (n): ");
	scanf("%d",&cislo);
	printf("\n");

	printf("Vysledok: %d\n",vypocet((float)cislo));
	
	return(0);
}
