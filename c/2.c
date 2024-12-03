// { [ Parent and Child Process ] }

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

void main() {
	int pid;
	char cmd[50];
	pid = fork();
	if (pid < 0) {
		printf("Fork failed\n");
		exit(0);
	}
	else if (pid == 0) {
		printf("Child Process id = %d\n", getpid());
		while (strcmp(cmd, "exit") != 0) {
			printf("user@localhost~$");
			gets(cmd);
			system(cmd);
		}
	}
	else {
		wait(NULL);
		printf("Parent Process id = %d\n", getpid());
	}
}
