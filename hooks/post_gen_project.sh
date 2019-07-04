#!/bin/sh

chmod u+x {{cookiecutter.name}}.pyx
mv {{cookiecutter.name}}.pyx ../

cd ..; rmdir {{cookiecutter.name}}
