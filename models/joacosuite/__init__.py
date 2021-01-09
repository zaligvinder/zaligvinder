def getTrackData (bname = None):
    import models.joacosuite.JOACO
    res = []
    for k in [
    		  models.joacosuite.JOACO,
              ]:
        res = res+k.getTrackData (bname or "joacosuite")
    return res
