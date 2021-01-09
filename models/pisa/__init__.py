def getTrackData (bname = None):
    import models.pisa.pisa
    res = []
    for k in [
    		  models.pisa.pisa,
              ]:
        res = res+k.getTrackData (bname or "pisa")
    return res
