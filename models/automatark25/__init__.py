def getTrackData (bname = None):
    import models.automatark25.complexnew
    import models.automatark25.simplenew
    res = []
    for k in [
    		  models.automatark25.complexnew,
    		  models.automatark25.simplenew,
              ]:
        res = res+k.getTrackData (bname or "automatark25")
    return res
