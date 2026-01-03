ifndef INPUT
  INPUT=input
endif

1:
	sed 's|,|\n|g' $(INPUT) | awk -f process.awk

2:
	sed 's|,|\n|g' $(INPUT) | awk -f process2.awk

.PHONY: 1 2
.SILENT:
