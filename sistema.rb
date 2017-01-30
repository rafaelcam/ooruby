require_relative "livro"
require_relative "revista"
require_relative "e_book"
require_relative "estoque"


algoritmos = Livro.new("Algoritmos", 100, 1998, "Abril", true, true)
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, "Abril", true, true)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, "Abril", true, false)
ruby = Livro.new("Programming Ruby", 100, 2004, "Abril", true, true)
revistona = Revista.new("Revista Ruby", 100, 2004, "MCHOO", 10)
online_arquitetura = EBook.new("Introdução a Arquitetura e Design de Software", 50, 2012, "editora")

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona << online_arquitetura

estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende online_arquitetura

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)