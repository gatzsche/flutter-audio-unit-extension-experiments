#!/usr/bin/python

import os
from subprocess import call

from os.path import expanduser

#Change these vars
imagesDir      = './doc/images'
screenShotDir  = '~/Downloads'
openPreview    = False
fileNamePrefix = 'INL'

#Define a function processing pathes
scriptDir = os.path.abspath(os.path.dirname(__file__) + '/')

def processPath(path):
    homeDir = expanduser("~")
    path = path.replace('~', homeDir)
    if(not os.path.isabs(path)):
        path.replace('\\', '/')
        path = os.path.join(scriptDir, path)
    return path;


#Process screenshot dir
screenShotDir = processPath(screenShotDir);
imagesDir = processPath(imagesDir);

#Check pathes
if not os.path.exists(screenShotDir):
    print 'ScreenshotDir "' + screenShotDir + '" does not exist'
    exit(1)

if not os.path.exists(imagesDir):
    print 'Images Dir "' + imagesDir + '" does not exist'
    exit(1)


#Process show preview
openPreviewString = ''
if openPreview:
    openPreviewString = ' ' + '--openPreview'

def par(string):
    return '"' + string + '"'

#Call markDownHelper.py
command = ['markDownHelper.py',
           '--markdownDir', par(scriptDir),
           '--imagesDir', par(imagesDir),
           '--screenShotDir',  par(screenShotDir),
           '--prefix', fileNamePrefix,
           '--copyToClipboard', openPreviewString];


commandString = " ".join(command)
os.system(commandString)


