ifndef INPUT
  INPUT=input
endif

TMPFILE=/tmp/aoc.2024.1

1: $(TMPFILE)
	awk -f process.awk $(TMPFILE)

2: $(TMPFILE)
	awk -f process2.awk $(TMPFILE)

$(TMPFILE):
	./make_input.sh $(INPUT) > $(TMPFILE)

clean:
	-rm $(TMPFILE)

.PHONY: clean 1 2
.SILENT:
