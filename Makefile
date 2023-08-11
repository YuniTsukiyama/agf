INPUT   ?= fal.dot
OUTPUT  ?= fal.png
START   ?= SthOtouxDouX
DIR     ?= 0

# GVPR Scripts
SCRIPT_STATS = scripts/stats.gvpr
SCRIPT_SUB   = scripts/sub.gvpr

# Intermediate graph file
INT_FILE = fal.int

$(OUTPUT): $(INT_FILE)
	dot -Tpng $< -o $@

$(INT_FILE): $(INPUT)
	cp '$(INPUT)' $(INT_FILE)

sub: $(INPUT) $(SCRIPT_SUB)
	gvpr -f $(SCRIPT_SUB) -a "'$(START)'" -a '$(DIR)' $< -o $(INT_FILE)
	$(MAKE)

stats: $(INPUT) $(SCRIPT_STATS)
	gvpr -f $(SCRIPT_STATS) $<

clean:
	$(RM) '$(OUTPUT)' $(INT_FILE)

.PHONY: clean sub stats
