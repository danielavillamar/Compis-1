GRAMMAR = YAPL
TEST = executable.cl



compile:
	@echo Grammar is being compiled: $(GRAMMAR) 
	java org.antlr.v4.Tool -Dlanguage=Python3 $(GRAMMAR).g4 -visitor -o Compiled
	@echo Compiled successfully!

run:
	@echo run Main...
	python3 main.py ./$(TEST)

clean:
	rm -rf Compiled
