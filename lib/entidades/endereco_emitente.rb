require 'active_model/validations'
require 'active_model/serialization'
#TODO: usar validacoes sem usar active record
class EnderecoEmitente
  include ActiveModel::Validations
  include ActiveModel::Serializers::JSON
  include ActiveModel::Serializers::Xml


  validates_length_of :xLgr, :nro, :xCpl, :xBairro, :xMun, :in => 2...60
  validates :CEP, :format => {:with => /[0-9]{8}/} #sem traços, somente numeros
  validates :fone, :format => {:with => /[0-9]{6,14}/} #DDD + número do telefone

  #cmun codUFIBGE
  #UF TUFIBGE 9999999 para exterior

  attr_accessor :xlgr
  attr_accessor :nro
  attr_accessor :xcpl
  attr_accessor :xbairro
  attr_accessor :cmun
  attr_accessor :xmun
  attr_accessor :uf
  attr_accessor :cep
  attr_accessor :cpais
  attr_accessor :xpais
  attr_accessor :fone

  def cpais
    Parametros::CODIGO_BRASIL
  end

  def xpais
    'BRASIL'
  end

  #Testar se tem como controlar o que será atributo e o que será valor
  #,esta gerando uma saida invalida
  def attributes
    @attributes = {'TEnderEmi' =>
                       {'xLgr'    => xlgr,
                        'nro'     => nro,
                        'xCpl'    => xcpl,
                        'xBairro' => xbairro,
                        'cMun'    => cmun,
                        'xMun'    => xmun,
                        'UF'      => uf,
                        'CEP'     => cep,
                        'cPais'   => cpais,
                        'xPais'   => xpais,
                        'fone'    => fone}}
  end

end