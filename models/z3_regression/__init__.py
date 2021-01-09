def getTrackData (bname = None):
    import models.z3_regression.final
    res = []
    for k in [
    		  models.z3_regression.final,
              ]:
        res = res+k.getTrackData (bname or "z3_regression")
    return res
