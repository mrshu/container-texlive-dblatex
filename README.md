# docker-texlive-dblatex

Especially useful when you need to apply custom styling to DocBook documents,
which are then compiled using LaTeX.

This is how the [RoboCupJunior Soccer Rules](https://github.com/RoboCupJuniorTC/soccer-rules)
are currnetly created.

## Usage

        docker run -v .:/documents/:Z -it mrshu/texlive-dblatex dblatex -T db2latex -t tex --texstyle=./manual.sty -p custom.xsl

Run `dblatex` from the current directory with specific LaTeX style applied
(`manual.sty`) and a custom XSL user configuration file (`custom.xsl`)
provided.

## Features

* Based on [Ubuntu Bionic -- 18.04](http://releases.ubuntu.com/18.04/)
* Provides full texlive enviroment (which is quite big -- about 2GB)
* Installs [`dblatex`](http://dblatex.sourceforge.net/)
