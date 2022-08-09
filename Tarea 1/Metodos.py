class metodos:
    def __init__(self):
        self.resultado=0
        self.cantidadCaracteres=0


    # Método basic_operations
    def basic_operations(self, Op1, Op2, Op):
        tipo1 = isinstance(Op1, int) # comprobación tipo de entrada de los operandos
        tipo2 = isinstance(Op2, int)
        tipo3 = isinstance(Op, int)

        if (tipo1 and tipo2 and tipo3):
            if (Op==1):# Operación 1 suma
                self.resultado = Op1 + Op2
            elif (Op==2): # Operación 2 resta
                self.resultado = Op1 - Op2
            else: #Operación 3 división
                if (Op2==0): # Comprobación división por cero
                    return 88 #el error es mejor utilizar un estándar o código de error y no sólo un valor 
                else:
                    self.resultado = Op1/Op2
            return self.resultado

        else:
            return 99

    # Método count_char
    def count_char(self, param):
        if type(param)!=str: # comprobación tipo de entrada del parámetro
            return 77
        else:
            self.cantidadCaracteres = len(param) # contador de caracteres
            return self.cantidadCaracteres


