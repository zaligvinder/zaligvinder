def getTrackData (bname = None):
    import models.nornbenchmarks.ChunkSplit
    import models.nornbenchmarks.HammingDistance
    import models.nornbenchmarks.Levenshtein
    import models.nornbenchmarks.StringReplace
    import models.nornbenchmarks.ab
    res = []
    for k in [
    		  models.nornbenchmarks.ChunkSplit,
    		  models.nornbenchmarks.HammingDistance,
    		  models.nornbenchmarks.Levenshtein,
    		  models.nornbenchmarks.StringReplace,
    		  models.nornbenchmarks.ab,
              ]:
        res = res+k.getTrackData (bname or "nornbenchmarks")
    return res
