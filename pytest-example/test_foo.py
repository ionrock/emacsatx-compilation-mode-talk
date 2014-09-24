from foo import hello, rhello


def test_hello():
    assert hello() == 'Hello World!'


def test_rhello():
    assert rhello() == hello()
