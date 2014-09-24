def hello():
    return 'Hello World!'


def rhello(message='Hello World!'):
    if not message:
        return ''

    out = message[0]

    return out + rhello(message[1:])
