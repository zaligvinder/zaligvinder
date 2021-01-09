def getTrackData (bname = None):
    import models.stringfuzzregexgenerated.manyregexes
    import models.stringfuzzregexgenerated.regexbig
    import models.stringfuzzregexgenerated.regexdeep
    import models.stringfuzzregexgenerated.regexlengths
    import models.stringfuzzregexgenerated.regexpair
    import models.stringfuzzregexgenerated.regexsmall
    import models.stringfuzzregexgenerated.variants
    res = []
    for k in [
    		  models.stringfuzzregexgenerated.manyregexes,
    		  models.stringfuzzregexgenerated.regexbig,
    		  models.stringfuzzregexgenerated.regexdeep,
    		  models.stringfuzzregexgenerated.regexlengths,
    		  models.stringfuzzregexgenerated.regexpair,
    		  models.stringfuzzregexgenerated.regexsmall,
    		  models.stringfuzzregexgenerated.variants,
              ]:
        res = res+k.getTrackData (bname or "stringfuzzregexgenerated")
    return res
