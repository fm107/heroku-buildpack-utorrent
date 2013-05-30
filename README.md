Heroku buildpack: µTorrent
=======================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpack) for µTorrent.

Usage
-----

Example usage:

    $ ls -R *
    _utorrent.cfg

    $ heroku create --stack cedar --buildpack https://github.com/abhishekmunie/heroku-buildpack-utorrent.git
    ...

    $ git push heroku master
    ...
    -----> Fetching custom buildpack... done
    -----> µTorrent app detected
    -----> Downloading µTorrent... done
    -----> Initiating Requested Buildpack... done
    -----> Discovering process types
    ...

The buildpack will detect your app as µTorrent if it has the file
`_utorrent.cfg` in the `root` directory.

Set *ADDITIONAL_BUILDPACK_URL* in `_utorrent.cfg` to add another buildpack.

The µTorrent server will be available in `./utorrent-server`.

As an alternative to the above instructions you may wish to investigate
[heroku-buildpack-multi](https://github.com/ddollar/heroku-buildpack-multi)
in order to support more complex use-cases.

Hacking
-------

To modify this buildpack, fork it on Github. Push up changes to your fork, then
create a test app with `--buildpack <your-github-url>` and push to it.