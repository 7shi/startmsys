TARGET  = startmsys.exe
LDFLAGS = -s -mwindows

all: $(TARGET)

$(TARGET): startmsys.o icon.o
	$(CC) -o $@ $(LDFLAGS) $^

startmsys.o: startmsys.c
	$(CC) -o $@ -c $<

icon.o: icon.rc msys.ico
	windres $< $@

msys.ico: /msys.ico
	cp $< $@

install: $(TARGET)
	cp $< /

clean:
	rm -f $(TARGET) startmsys.o icon.o msys.ico
