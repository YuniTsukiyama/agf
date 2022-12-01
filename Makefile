INPUT   ?= fal.dot
OUTPUT  ?= fal.png
START   ?= SthOtouxDouX
DIR     ?= 0

# GVPR Scripts
SCRIPT_SUB = sub.gvp

# Intermediate graph file
INT_FILE = fal.int

$(OUTPUT): $(INT_FILE)
	dot -Tpng $< -o $@

$(INT_FILE): $(INPUT)
	cp '$(INPUT)' $(INT_FILE)

sub: $(INPUT) $(SCRIPT_SUB)
	gvpr -f $(SCRIPT_SUB) -a '$(START)' -a '$(DIR)' $< -o $(INT_FILE)
	$(MAKE)

clean:
	$(RM) '$(OUTPUT)' $(INT_FILE)

.PHONY: sub clean
