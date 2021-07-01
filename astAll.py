#!/usr/bin/python

from runners.multi import TheRunner as testrunner
import utils
import storage
import voting.majority as voting
import tools.cvc4

import models.woorpje
import models.kaluza
import models.PyEx_All
import models.pisa
import models.nornbenchmarks
import models.stringfuzz
import models.z3_regression
import models.appscan
import models.slothtests
import models.light
import models.Leetcode
import models.cashewsuite
import models.joacosuite
import models.strangersuite
import models.kauslersuite
import models.banditfuzz
import models.stringfuzzregextransformed
import models.stringfuzzregexgenerated
import models.automatark25
import startwebserver

import summarygenerators
tracks = (models.PyEx_All.getTrackData ("PyEx") +
          models.pisa.getTrackData ("Pisa") +
          models.nornbenchmarks.getTrackData ("Norn") +
          models.light.getTrackData("Trau Light")+
          models.Leetcode.getTrackData ("Leetcode Strings") + 
          models.appscan.getTrackData ( "IBM Appscan") + 
          models.slothtests.getTrackData ("Sloth") +
          models.woorpje.getTrackData ("Woorpje Word Equations") +
          models.kaluza.getTrackData ("Kaluza") +
          models.stringfuzz.getTrackData ("StringFuzz") +
          models.z3_regression.getTrackData("z3Str3 Regression")+
          models.cashewsuite.getTrackData ("Cashew") + 
          models.joacosuite.getTrackData ("JOACO") +
          models.strangersuite.getTrackData ("Stranger") +
          models.kauslersuite.getTrackData ("Kausler") +
          models.banditfuzz.getTrackData("BanditFuzz") +
          models.automatark25.getTrackData("AutomatArk")+
          models.stringfuzzregexgenerated.getTrackData()+
          models.stringfuzzregextransformed.getTrackData()+
        []
        )

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
