def getTrackData (bname = None):
    import models.kaluza.BigSat
    import models.kaluza.BigUnsat
    import models.kaluza.SmallSat
    import models.kaluza.SmallUnsat
    res = []
    for k in [
    		  models.kaluza.BigSat,
    		  models.kaluza.BigUnsat,
    		  models.kaluza.SmallSat,
    		  models.kaluza.SmallUnsat,
              ]:
        res = res+k.getTrackData (bname or "kaluza")
    return res
