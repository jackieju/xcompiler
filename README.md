# xcompiler
Cross compile any programming language to another


*** HOW TO USE

1. Prepare

This project developed on macos. But should be easy to port on windows, since it uses ruby.

You need to have ruby 2.6+.

You need to download cpp2ruby first.
<pre>
cd ..
git clone https://github.com/jackieju/CPP2Ruby.git
cd xcompiler
</pre>



2. Generate Parser from EBNF

<pre>
    cd cocoR\
    ./gen_parser [atg file]
</pre>

In case you change the location of cpp2ruby, you can edit file gen_parser and change the line
<pre>
    cpp2ruby_dir=../../CPP2Ruby
</pre>

3. Modify macro.rb to do preprocessing

4. Modfiy cp.rb to do overriding

5. run
<pre>
    ruby translate.rb -d [output dir] [source code files]
</pre>

For example to use xcompiler to translate code, please see https://github.com/jackieju/abap2ruby
