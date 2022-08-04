from Metodos import metodos

tarea = metodos()


def test_1():
    # revisa que la operacion basic operations realiza todas las operaciones
    # correctamente
    assert tarea.basic_operations(15, 10, 1) == 25
    assert tarea.basic_operations(10, 3, 2) == 7
    assert tarea.basic_operations(15, 5, 3) == 3


def test_2():
    # revisa que se retorna el codigo de error correcto si se le pasa un
    # string como entrada
    assert tarea.basic_operations(10, "a", 1) == 99


def test_3():
    # revisa que se retorna el codigo de error correcto si se realiza una
    # division entre 0
    assert tarea.basic_operations(7, 0, 3) == 88


def test_4():
    # revisa que se cuenta correctamente la cantidad de caracteres
    assert tarea.count_char("holamundo$$13") == 13


def test_5():
    # revisa que se retorne el codigo de error correcto si se pasa algo
    # distinto a un string
    assert tarea.count_char(80) == 77
