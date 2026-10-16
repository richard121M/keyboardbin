KeyboardBin
# INTRODUÇÃO
  É um circuito combinacional feito em VHDL que fiz para a diciplina de SD( Sistemas digitais )
em que consiste em uma forma de conseguir escrever no display de números da placa da Altera e
utilizando as alavancas da placa como tecla para selecionar os caracteres.

# COMO FUNCIONA?
  Cada Letra recebe um código binário de 5 bits, e aparti desses codigos é possivel
usar as alavancas para selecionar os caracteres

# INPLEMENTAÇÃO
  Como é possível de se imaginar nem todas as letras foram possiveis de passar para o display de números 
pois o display só possui 7 LEDs, oque levou as letras K,M e W seram removidas da lista de caracteres e as letras
T e V sofreram distorções.
  Outro ponto é que a Waveform.vwf pode causar uma estranheza, pois os picos de alta(bit 1) e Baixa(bit 0) estão "invetidos" 
isso se deve ao fato de que no display da Altera o Bit 0 é ligado e o Bit 1 é desligado


