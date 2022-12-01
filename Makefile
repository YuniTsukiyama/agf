INPUT   ?= fal.dot
OUTPUT  ?= fal.png

$(OUTPUT): $(INPUT)
	dot -Tpng $< -o $@

clean:
	$(RM) '$(OUTPUT)'

.PHONY: clean
