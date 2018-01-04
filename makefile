.PHONY: directories clean task_debug task_release

default: task_release

# Tasks:
task_debug: directories bin/gensold

task_release: directories bin/gensol

# Targets:
bin/gensol: .build/src/access.cpp.gensol.o .build/src/debugOutput.cpp.gensol.o .build/src/generate.cpp.gensol.o .build/src/help.cpp.gensol.o .build/src/init.cpp.gensol.o .build/src/loadAndParse.cpp.gensol.o .build/src/main.cpp.gensol.o .build/src/matchFiles.cpp.gensol.o .build/src/merge.cpp.gensol.o .build/src/solution.cpp.gensol.o .build/src/variables.cpp.gensol.o
	g++ -o $@ $^ -std=c++11 -static-libgcc -lboost_program_options-mt -lboost_system-mt -lboost_filesystem-mt

bin/gensold: .build/src/access.cpp.gensold.o .build/src/debugOutput.cpp.gensold.o .build/src/generate.cpp.gensold.o .build/src/help.cpp.gensold.o .build/src/init.cpp.gensold.o .build/src/loadAndParse.cpp.gensold.o .build/src/main.cpp.gensold.o .build/src/matchFiles.cpp.gensold.o .build/src/merge.cpp.gensold.o .build/src/solution.cpp.gensold.o .build/src/variables.cpp.gensold.o
	g++ -o $@ $^ -std=c++11 -static-libgcc -lboost_program_options-mt -lboost_system-mt -lboost_filesystem-mt

# Sources:
.build/src/access.cpp.gensol.o: src/access.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/debugOutput.cpp.gensol.o: src/debugOutput.cpp include/trace.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/generate.cpp.gensol.o: src/generate.cpp include/solution.h include/error.h include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/help.cpp.gensol.o: src/help.cpp
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/init.cpp.gensol.o: src/init.cpp include/modules/basicModule.h include/error.h include/trace.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/loadAndParse.cpp.gensol.o: src/loadAndParse.cpp include/trace.h include/error.h include/modules/task.h include/modules/basicModule.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/solution.h include/error.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/main.cpp.gensol.o: src/main.cpp include/trace.h include/error.h include/solution.h include/error.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/matchFiles.cpp.gensol.o: src/matchFiles.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/merge.cpp.gensol.o: src/merge.cpp include/modules/compiler.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/linker.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/solution.cpp.gensol.o: src/solution.cpp include/trace.h include/solution.h include/error.h include/error.h include/modules/task.h include/modules/basicModule.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/variables.cpp.gensol.o: src/variables.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h include/error.h
	g++ -c -o $@ $< -O2 -std=c++11 -m32 -Iinclude/

.build/src/access.cpp.gensold.o: src/access.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/debugOutput.cpp.gensold.o: src/debugOutput.cpp include/trace.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/generate.cpp.gensold.o: src/generate.cpp include/solution.h include/error.h include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/help.cpp.gensold.o: src/help.cpp
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/init.cpp.gensold.o: src/init.cpp include/modules/basicModule.h include/error.h include/trace.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/loadAndParse.cpp.gensold.o: src/loadAndParse.cpp include/trace.h include/error.h include/modules/task.h include/modules/basicModule.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/solution.h include/error.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/main.cpp.gensold.o: src/main.cpp include/trace.h include/error.h include/solution.h include/error.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/matchFiles.cpp.gensold.o: src/matchFiles.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/merge.cpp.gensold.o: src/merge.cpp include/modules/compiler.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/linker.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/solution.cpp.gensold.o: src/solution.cpp include/trace.h include/solution.h include/error.h include/error.h include/modules/task.h include/modules/basicModule.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

.build/src/variables.cpp.gensold.o: src/variables.cpp include/modules/task.h include/modules/basicModule.h include/error.h include/trace.h include/modules/config.h include/modules/compiler.h include/modules/linker.h include/modules/target.h include/out.h include/error.h
	g++ -c -o $@ $< -g -D_DEBUG -std=c++11 -m32 -Iinclude/

# Others:
directories:
	mkdir -p .build/ .build/src bin/

all: task_debug task_release

clean:
	rm -rf .build/ .build/src bin/ bin/gensol bin/gensold
