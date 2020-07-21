# xcompiler
Cross compile any programming language to another


*** HOW TO USE

1. Prepare
You need to have ruby 2.6+

You need to download cpp2ruby first.
<pre>
cd ..
git clone https://github.com/jackieju/CPP2Ruby.git
cd abap2ruby
</pre>


2. Generate Parser from EBNF


<pre>
    cd cocoR\
    ./gen_parser [atg file]
</pre>

3. Modify macro.rb to do preprocessing

4. Modfiy cp.rb to do overriding

5. run
<pre>
    ruby translate.rb -d [output dir] [source code files]
</pre>

For example to use xcompiler to translate code, please see https://github.com/jackieju/abap2ruby
