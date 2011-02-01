class Emitente



  # - Nome/Razao Social (obrigatorio)
    attr_accessor :razao_social

    # - Nome Fantasia
    attr_accessor :nome_fantasia

    # - CNPJ (obrigatorio)
    attr_accessor :cnpj

    # - Inscricao Estadual (obrigatorio)
    attr_accessor :inscricao_estadual

    # - CNAE Fiscal
    attr_accessor :cnae_fiscal

    # - Inscricao Municipal
    attr_accessor :inscricao_municipal

    # - Inscricao Estadual (Subst. Tributario)
    attr_accessor :inscricao_estadual_subst_tributaria

    # Endereco
    # - Logradouro (obrigatorio)
    attr_accessor :endereco_logradouro

    # - Numero (obrigatorio)
    attr_accessor :endereco_numero

    # - Complemento
    attr_accessor :endereco_complemento

    # - Bairro (obrigatorio)
    attr_accessor :endereco_bairro

    # - CEP
    attr_accessor :endereco_cep

    # - Pais (aceita somente Brasil)
    attr_accessor :endereco_pais

    # - UF (obrigatorio)
    attr_accessor :endereco_uf

    # - Municipio (obrigatorio)
    attr_accessor :endereco_municipio

    # - Telefone
    attr_accessor :endereco_telefone

    # Logotipo
    attr_accessor :logotipo

  def initialize
    endereco_pais = CODIGO_BRASIL
  end

  def to_s
    cnpj
  end
end