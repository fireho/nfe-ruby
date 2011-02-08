require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift(File.dirname(__FILE__))

puts 'Rodando nfe-ruby'

#puts $LOAD_PATH

require 'entidades/cliente'
require 'entidades/emitente'
require 'entidades/nota_fiscal'
require 'entidades/produto'
require 'entidades/produto_icms'
require 'entidades/transportadora'

cliente = Cliente.new
emitente = Emitente.new

#puts cliente.methods.sort
puts
puts cliente.to_xml
puts