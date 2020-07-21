# xcompiler
Cross compile any programming language to another


*** HOW TO USE

1. Generate Parser from EBNF


<pre>
    cd cocoR\
    ./gen_parser <atg file>
</pre>

2. Modify macro.rb to do preprocessing

3. Modfiy cp.rb to do overriding

4. run
<pre>
    ruby translate.rb -d <output dir> <source code files>
</pre>