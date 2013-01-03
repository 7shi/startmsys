/* public domain */

#include <windows.h>

int main() {
	ShellExecute(NULL, "open", "msys.bat", NULL, NULL, SW_HIDE);
	return 0;
}
