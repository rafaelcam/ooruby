require_relative("produto")

class EBook

  include Produto

  def initialize(titulo, preco, ano_lancamento, editora)
    super(titulo, preco, ano_lancamento, editora)
  end

  def matches?(query)
    query=="ebook" || query=="digital"
  end
end