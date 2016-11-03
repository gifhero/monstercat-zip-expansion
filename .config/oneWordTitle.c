#include <stdio.h>

int main(void){
	char array[10000];
	int c, i = 0;
	while((c = getchar()) != EOF && c != '\n'){
		if(c == ','){
			array[i] = '\0';
			i = 0;
			while(array[i])
				printf("%c", array[i++]);
			return 0;	
		}
		else if(c == ' '){
			if((c = getchar()) == 'x' || c == '&'){
				array[i] = '\0';
				i = 0;
				while(array[i])
					printf("%c", array[i++]);
				return 0;	
			}
			else
				array[i++] = c;
		}
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
