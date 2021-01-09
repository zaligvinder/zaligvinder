def getTrackData (bname = None):
    import models.light.light
    res = []
    for k in [
    		  models.light.light,
              ]:
        res = res+k.getTrackData (bname or "light")
    return res
