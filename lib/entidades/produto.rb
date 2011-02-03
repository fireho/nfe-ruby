# E provavel que esta entidade sera descartada, porque?
class Produto
  # - Descricao (obrigatorio)
  attr_accessor :descricao

  # - Codigo (obrigatorio) - nao pode ser alterado quando em edicao
  attr_accessor :codigo

  # - EAN
  attr_accessor :ean

  # - EAN Unid. Tributavel
  attr_accessor :ean_unidade_tributavel

  # - EX TIPI
  attr_accessor :ex_tipi

  # - Genero
  attr_accessor :genero

  # - NCM
  attr_accessor :ncm

  # - Unid. Com.
  attr_accessor :unidade_comercial

  # - Valor Unitario Com.
  attr_accessor :valor_unitario_comercial

  # - Unid. Trib.
  attr_accessor :unidade_tributavel

  # - Qtd. Trib.
  attr_accessor :quantidade_tributavel

  # - Valor Unitario Trib.
  attr_accessor :valor_unitario_tributavel

  # Impostos
  # - ICMS (lista 1 para * / ManyToManyField)
  attr_accessor :icms

  # - IPI
  # - Classe de Enquadramento (cigarros e bebidas)
  attr_accessor :ipi_classe_enquadramento

  # - Codigo de Enquadramento Legal
  attr_accessor :ipi_codigo_enquadramento_legal

  # - CNPJ do Produtor
  attr_accessor :ipi_cnpj_produtor

  def initialize
    icms = []
  end

end


