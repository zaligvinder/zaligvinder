import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer


#path = utils.findProgram ("Z3BINARY","z3")

def run (eq,timeout,ploc,wd):
    return utils.Result(None,0,False,1,"")

def addRunner (addto):
    addto['dummy'] = run



