#include <stdio.h>

int main(void){
	char array[10000];
	int c, i = 0;
	while((c = getchar()) != EOF && c != '\n'){
		if(c == ' ')
			;	
		else if(c == "\'")
			printf("'");
		else
			array[i++] = c;
	}
	array[i] = '\0';
	i = 0;
	while(array[i])
		printf("%c", array[i++]);
	printf("\n");
	return 0;
}
