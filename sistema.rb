require_relative "livro"
require_relative "estoque"


algoritmos = Livro.new("Algoritmos", 100, 1998, true, "Abril", "livro")
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, "Abril", "livro")
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, "Abril", "livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true, "Abril", "livro")
revistona = Livro.new("Revista Ruby", 100, 2004, true, "Projeto", "revista")
online_arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 50, 2012, true, "editora", "ebook")

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