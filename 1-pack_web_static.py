#!/usr/bin/python3
<<<<<<< HEAD
# -*- coding: utf-8 -*-
"""
Created on Mon Aug 13 14:21:54 2020
@author: Robinson Montes
"""
from fabric.api import local, env
from datetime import datetime

env.user = 'ubuntu'
env.hosts = ['35.227.35.75', '100.24.37.33']


def do_pack():
    """
    Targging project directory into a packages as .tgz
    """
    now = datetime.now().strftime("%Y%m%d%H%M%S")
    local('sudo mkdir -p ./versions')
    path = './versions/web_static_{}'.format(now)
    local('sudo tar -czvf {}.tgz web_static'.format(path))
    name = '{}.tgz'.format(path)
    if name:
        return name
=======
# module that holds method that generates a .tgz archive

from fabric.api import local
import datetime


def do_pack():
    """ Generates a .tgz archive """
    local("mkdir -p versions")
    t = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    archive = local("tar -czvf versions/web_static_{}\
.tgz web_static".format(t))
    if archive:
        return ("versions/web_static_{}".format(t))
>>>>>>> 1d1ce3f8855858bbe28f1137f2b8da40c8f9af22
    else:
        return None
