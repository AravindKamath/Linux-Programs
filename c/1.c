// Signal handler

#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void sig_handler(int signo) {
	printf("Signal caught is %d\n", signo);
}

int main(void) {
	(void) signal(SIGINT, sig_handler);
	while (1) {
		printf("Hello World\n"); 
		sleep(1);
	}
	return 0;
}
