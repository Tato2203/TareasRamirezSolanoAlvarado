class Metodos:
    def __init__(self):
        self.resultado = 0
        self.cantidadCaracteres = 0

# Método basic_operations
    def basic_operations(self, op1, op2, op):
        tipo1 = isinstance(op1, int)  # comprobación tipo de entrada de los operandos
        tipo2 = isinstance(op2, int)
        tipo3 = isinstance(op, int)

        if tipo1 and tipo2 and tipo3:
            if op == 1:  # Operación 1 suma
                self.resultado = op1 + op2
            elif op == 2:  # Operación 2 resta
                self.resultado = op1 - op2
            else:  # Operación 3 división
                if op2 == 0:  # Comprobación división por cero
                    return 88
                else:
                    self.resultado = op1/op2
            return self.resultado

        else:
            return 99

    # Método count_char
    def count_char(self, param):
        if type(param) != str:  # comprobación tipo de entrada del parámetro
            return 77
        else:
            self.cantidadCaracteres = len(param)  # contador de caracteres
            return self.cantidadCaracteres
