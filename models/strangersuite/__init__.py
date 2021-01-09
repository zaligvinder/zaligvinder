def getTrackData (bname = None):
    import models.strangersuite.stranger
    res = []
    for k in [
    		  models.strangersuite.stranger,
              ]:
        res = res+k.getTrackData (bname or "strangersuite")
    return res
