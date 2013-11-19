/* public domain */

#include <windows.h>

int main() {
	ShellExecute(NULL, "open", "msys.bat", "-mintty", NULL, SW_HIDE);
	return 0;
}
