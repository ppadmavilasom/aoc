ifndef INPUT
  INPUT=input
endif

1:
	awk -f process.awk $(INPUT)

2:
	awk -vnum_digits=12 -f process.awk $(INPUT)

.PHONY: 1
.SILENT:
