require_relative("produto")

class Revista
  include Produto

  def initialize(titulo, preco, ano_lancamento, editora, numero)
    super(titulo, preco, ano_lancamento, editora)
    @numero = numero
  end

  def matches?(query)
    query=="revista" || query=="impresso"
  end
end