ifndef INPUT
  INPUT=input
endif

1:
	awk -f process.awk $(INPUT)

2:
	awk -f process2.awk $(INPUT)

.PHONY: 1 2
.SILENT:
