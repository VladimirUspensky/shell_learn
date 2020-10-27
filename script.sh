#!/bin/bash
touch prog.cpp

echo "#include <iostream>" > prog.cpp
echo "#include <fstream>" >> prog.cpp
echo "using namespace std;" >> prog.cpp
echo "int main(){" >> prog.cpp
echo "ofstream result_file(\"inner_script.sh\");" >> prog.cpp
 
echo "result_file << \"touch inner_prog.cpp\n\";" >> prog.cpp
echo "result_file << \"echo \\\"#include <iostream>\\\" > inner_prog.cpp\n\";" >> prog.cpp
echo "result_file << \"echo \\\"using namespace std;\\\" >> inner_prog.cpp\n\";" >> prog .cpp
echo "result_file << \"echo \\\"int main(){std::cout << \\\\\\\"Hello world\\\\\\\" << std::endl; return 0;}\\\" >> inner_prog.cpp\n\";" >> prog.cpp
echo "result_file << \"g++ -o inner_prog inner_prog.cpp\n\";" >> prog.cpp
echo "result_file << \"./inner_prog\n\";" >> prog.cpp
echo "result_file.close();" >> prog.cpp
echo "return 0;}" >> prog.cpp

g++ -o prog prog.cpp
./prog
bash inner_script.sh

