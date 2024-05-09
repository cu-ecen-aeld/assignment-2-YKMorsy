#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
	openlog(NULL, 0, LOG_USER);

	if (argc != 3)
	{
		syslog(LOG_ERR, "USAGE: writer <writefile> <writestr>");
		exit(1);	
	}

	char *file = argv[1];
	char *str = argv[2];

	FILE *file_ptr;
       	file_ptr = fopen(file, "w");

	if (file_ptr == NULL)
	{
		syslog(LOG_ERR, "File creation error");
		exit(1);
	}

	fputs(str, file_ptr);
	
	fclose(file_ptr);
	return 0;
}
