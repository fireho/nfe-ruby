class ProdutoICMS

    # - Tipo de Tributacao (seleciona de lista) - ICMS_TIPOS_TRIBUTACAO
    attr_accessor :tipo_tributacao

    # - Origem (seleciona de lista) - ICMS_ORIGENS
    attr_accessor :origem

    # - Modalidade de determinacao da Base de Calculo (seleciona de lista) - ICMS_MODALIDADES
    attr_accessor :modalidade

    # - Aliquota ICMS
    attr_accessor :aliquota

    # - Percentual de reducao da Base de Calculo
    attr_accessor :percentual_reducao

    # - Modalidade de determinacao da Base de Calculo do ICMS ST (seleciona de lista) - ICMS_MODALIDADES
    attr_accessor :st_modalidade

    # - Aliquota ICMS ST
    attr_accessor :st_aliquota

    # - Percentual de reducao do ICMS ST
    attr_accessor :st_percentual_reducao

    # - Percentual da margem de Valor Adicionado ICMS ST
    attr_accessor :st_percentual_margem_valor_adicionado

end