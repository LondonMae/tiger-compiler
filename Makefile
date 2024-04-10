JFLAGS=-Werror -g -Xlint:deprecation -Xlint:unchecked

all: */*.java
	javac ${JFLAGS} */[A-Za-z]*.java

clean:
	rm -f */*.class
