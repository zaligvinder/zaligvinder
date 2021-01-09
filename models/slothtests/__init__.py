def getTrackData (bname = None):
    import models.slothtests.sloth
    res = []
    for k in [
    		  models.slothtests.sloth,
              ]:
        res = res+k.getTrackData (bname or "slothtests")
    return res
