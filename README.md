# graphgrep

Graphgrep uses an experimental HyperScan API call hs_compile_graph() to ingest automata pattern matchers using explicit Glushkov/Homogeneous/Position automata, rather than PCRE.

## Usage
./graphgrep \<graph file\> \<input byte stream file\> \<number of iterations\>

## Producing graphs readable by hs_compile_graph()
If you have an ANML automata, vasim can convert it to the .graph format using the --graph flag. Graphs can also be created programmatically or by hand using the following format:

\<number of nodes\> <br>
\<node id\> \<character set bitlist\> \<start\> \<startDotStar\> \<report\> <br>
.... two examples below, one node per line<br>
node_1_startds 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 0 1 0<br>
node_2_accept 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 0 0 1<br>
\<from node id\> \<to node id\> \<to node id\>....<br>
.... two examples below connecting node_1_startds to node_2_accept, and the self-loop on node_2_accept, one per line<br>
node_1_startds node_2_accept<br>
node_2accept node_2_accept<br>

## Compilation
Graphgrep currently requires my fork of HyperScan (jackwadden/hyperscan) to compile. You will have to clone and compile my fork and then edit the appropriate paths in the Makefile before running 'make'.
