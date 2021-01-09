def getTrackData (bname = None):
    import models.stringfuzzregextransformed.amazon
    import models.stringfuzzregextransformed.z3str2
    res = []
    for k in [
    		  models.stringfuzzregextransformed.amazon,
    		  models.stringfuzzregextransformed.z3str2,
              ]:
        res = res+k.getTrackData (bname or "stringfuzzregextransformed")
    return res
