class Transportadora

    # - Nome/Razão Social (obrigatorio)
    attr_accessor :razao_social

    # - Tipo de Documento (obrigatorio) - default CNPJ
    attr_accessor :tipo_documento

    # - Numero do Documento (obrigatorio)
    attr_accessor :numero_documento

    # - Inscricao Estadual
    attr_accessor :inscricao_estadual

    # Endereco
    # - Logradouro (obrigatorio)
    attr_accessor :endereco_logradouro

    # - UF (obrigatorio)
    attr_accessor :endereco_uf

    # - Municipio (obrigatorio)
    attr_accessor :endereco_municipio

    def to_s
        "#{@tipo_documento} #{@numero_documento}"
    end

end