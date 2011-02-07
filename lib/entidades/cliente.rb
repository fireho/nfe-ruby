require 'configuracao/parametros'
require 'active_model'
class Cliente
    include ActiveModel::Serializers::JSON
    include ActiveModel::Serializers::Xml


    # - Nome/Razão Social (obrigatorio)
    attr_accessor :razao_social

    # - Tipo de Documento (obrigatorio) - default CNPJ - TIPOS_DOCUMENTO
    attr_accessor :tipo_documento

    # - Numero do Documento (obrigatorio)
    attr_accessor :numero_documento

    # - Inscricao Estadual
    attr_accessor :inscricao_estadual

    # - Inscricao SUFRAMA
    attr_accessor :inscricao_suframa

    # - Isento do ICMS (Sim/Nao)
    attr_accessor :isento_icms

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

    # - Pais (seleciona de lista)
    attr_accessor :endereco_pais

    # - UF (obrigatorio)
    attr_accessor :endereco_uf

    # - Municipio (obrigatorio)
    attr_accessor :endereco_municipio

    # - Telefone
    attr_accessor :endereco_telefone

    def initialize
        @isento_icms   = false
        @endereco_pais = Parametros::CODIGO_BRASIL
        @tipo_documento= 'CNPJ'
    end

    def to_s
        "#{@tipo_documento} #{@numero_documento}"
    end

    def attributes#FIXME pensar em como pegar os atributos direto, isso se tiver jeito
        #atributos = self.public_methods.map{ |metodo| metodo if metodo.include? '=' }
        #atributos.each {|att| att.to_s.gsub('=', '')}
        #@attributes = atributos
        @attributes = {'endereco_municipio'=> endereco_municipio, 'endereco_uf' => endereco_uf}
    end


end