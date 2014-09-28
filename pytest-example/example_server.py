import os

import cherrypy

from cherrypy.lib.static import serve_file


HERE = os.path.dirname(os.path.abspath(__file__))


class Example(object):

    exposed = True

    def GET(self, file_path):
        filename = os.path.join(HERE, file_path)
        print('SERVING: %s' % filename)
        if os.path.exists(filename):
            return serve_file(filename)
        raise cherrypy.NotFound()


def run():
    cherrypy.quickstart(Example(), '/', config={
        '/': {'request.dispatch': cherrypy.dispatch.MethodDispatcher()}
    })

if __name__ == '__main__':
    run()
