#!/usr/bin/python

from runners.multi import TheRunner as testrunner
import utils
import storage
import voting.majority as voting
import tools.cvc4

import models.woorpje
import startwebserver

import summarygenerators
tracks = (models.woorpje.getTrackData ("Woorpje Word Equations"))

import tools.z3seqbin
import tools.z3str3bin 

solvers = {}
for s in [tools.cvc4,
          tools.z3seqbin,
          tools.z3str3bin,
]:
    s.addRunner (solvers)

summaries = [summarygenerators.terminalResult
]
timeout = 20
ploc = utils.JSONProgramConfig ()

store = storage.SQLiteDB ("z3Reg")
summaries = [
    summarygenerators.terminalResult,
    store.postTrackUpdate
]
verifiers = ["cvc4"]
testrunner().runTestSetup (tracks,solvers,voting.MajorityVoter(),summaries,store,timeout,ploc,verifiers)
startwebserver.Server (store.getDB ()).startServer ()
