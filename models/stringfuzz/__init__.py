def getTrackData (bname = None):
    import models.stringfuzz.concatsbalanced
    import models.stringfuzz.concatsbig
    import models.stringfuzz.concatsextractsbig
    import models.stringfuzz.concatsextractssmall
    import models.stringfuzz.concatssmall
    import models.stringfuzz.differentprefix
    import models.stringfuzz.lengthsconcats
    import models.stringfuzz.lengthslong
    import models.stringfuzz.lengthsshort
    import models.stringfuzz.manyregexes
    import models.stringfuzz.overlapsbig
    import models.stringfuzz.overlapssmall
    import models.stringfuzz.regexbig
    import models.stringfuzz.regexdeep
    import models.stringfuzz.regexlengths
    import models.stringfuzz.regexpair
    import models.stringfuzz.regexsmall
    res = []
    for k in [
    		  models.stringfuzz.concatsbalanced,
    		  models.stringfuzz.concatsbig,
    		  models.stringfuzz.concatsextractsbig,
    		  models.stringfuzz.concatsextractssmall,
    		  models.stringfuzz.concatssmall,
    		  models.stringfuzz.differentprefix,
    		  models.stringfuzz.lengthsconcats,
    		  models.stringfuzz.lengthslong,
    		  models.stringfuzz.lengthsshort,
    		  models.stringfuzz.manyregexes,
    		  models.stringfuzz.overlapsbig,
    		  models.stringfuzz.overlapssmall,
    		  models.stringfuzz.regexbig,
    		  models.stringfuzz.regexdeep,
    		  models.stringfuzz.regexlengths,
    		  models.stringfuzz.regexpair,
    		  models.stringfuzz.regexsmall,
              ]:
        res = res+k.getTrackData (bname or "stringfuzz")
    return res
