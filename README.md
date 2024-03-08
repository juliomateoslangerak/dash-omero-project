OMERO.omerodash
=======================

OMERO example minimal web app.

Installation
============

Install `omerodash` in development mode as follows:

    # within your python venv:
    $ cd omero-dash-webapp
    $ pip install -e .

Add the app to the `omero.web.apps` setting:

N.B. Here we use single quotes around double quotes:

    $ omero config append omero.web.apps '"omerodash"'

Optionally, add a link "Omero Dashboards" at the top of the webclient to
open the index page of this app:

    $ omero config append omero.web.ui.top_links '["Omero Dashboards", "omerodash_index", {"title": "Open Omero Dashboards in new tab", "target": "_blank"}]'


Now restart your `omero-web` server and go to
<http://localhost:4080/omerodash/> in your browser.


Further Info
============

1.  This app was derived from [cookiecutter-omero-webapp](https://github.com/ome/cookiecutter-omero-webapp).
2.  For further info on depolyment, see [Deployment](https://docs.openmicroscopy.org/latest/omero/developers/Web/Deployment.html)
