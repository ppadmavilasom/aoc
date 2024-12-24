ifndef INPUT
  INPUT=input
endif

TMPFILE=/tmp/aoc.2024.1.1
TMPFILE_2=/tmp/aoc.2024.1.2

1: $(TMPFILE)
	awk -f process.awk $(TMPFILE)

2: $(TMPFILE) $(TMPFILE_2)
	awk -f process2.awk $(TMPFILE_2) $(TMPFILE)

$(TMPFILE):
	./make_input.sh $(INPUT) > $(TMPFILE)

$(TMPFILE_2):
	./make_input_2.sh $(INPUT) > $(TMPFILE_2)

clean:
	-rm $(TMPFILE) $(TMPFILE_2)

.PHONY: clean 1 2
.SILENT:
