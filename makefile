all: direct indirect
clean:
	rm -rf target combined.a indirect direct

combined.a:
	cargo build
	rm -f combined.a
	ar -rc --thin combined.a target/debug/librustlib.a

indirect: combined.a
	gcc -g3 -Itarget/debug/include main.c combined.a -o indirect

direct:
	cargo build
	gcc -g3 -Itarget/debug/include main.c target/debug/librustlib.a -o direct

.PHONY: all clean