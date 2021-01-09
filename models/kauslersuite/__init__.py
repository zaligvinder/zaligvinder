def getTrackData (bname = None):
    import models.kauslersuite.kausler
    res = []
    for k in [
    		  models.kauslersuite.kausler,
              ]:
        res = res+k.getTrackData (bname or "kauslersuite")
    return res
