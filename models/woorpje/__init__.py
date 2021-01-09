def getTrackData (bname = None):
    import models.woorpje.track01
    import models.woorpje.track02
    import models.woorpje.track03
    import models.woorpje.track04
    import models.woorpje.track05
    res = []
    for k in [
    		  models.woorpje.track01,
    		  models.woorpje.track02,
    		  models.woorpje.track03,
    		  models.woorpje.track04,
    		  models.woorpje.track05,
              ]:
        res = res+k.getTrackData (bname or "woorpje")
    return res
