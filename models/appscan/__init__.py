def getTrackData (bname = None):
    import models.appscan.appscan
    res = []
    for k in [
    		  models.appscan.appscan,
              ]:
        res = res+k.getTrackData (bname or "appscan")
    return res
