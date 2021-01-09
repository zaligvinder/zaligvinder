def getTrackData (bname = None):
    import models.SMTLIB25.Jiangslent25
    import models.SMTLIB25.JiangslogQFS25
    import models.SMTLIB25.KeplerQFSLIA25
    import models.SMTLIB25.fullstrintpyconbytecvc4QFSLIA25
    import models.SMTLIB25.fullstrintpyconbytetraucQFSLIA25
    import models.SMTLIB25.fullstrintpyconbytez3seqQFSLIA25
    import models.SMTLIB25.fullstrintpyconbytez3strQFSLIA25
    import models.SMTLIB25.strpredsmallrw25
    import models.SMTLIB25.strtermsmallrw25
    import models.SMTLIB25.sygusqgen25
    import models.SMTLIB25.sygusqgenqueriesQFS25
    import models.SMTLIB25.sygusqgenqueriesnoreeQFS25
    res = []
    for k in [
    		  models.SMTLIB25.Jiangslent25,
    		  models.SMTLIB25.JiangslogQFS25,
    		  models.SMTLIB25.KeplerQFSLIA25,
    		  models.SMTLIB25.fullstrintpyconbytecvc4QFSLIA25,
    		  models.SMTLIB25.fullstrintpyconbytetraucQFSLIA25,
    		  models.SMTLIB25.fullstrintpyconbytez3seqQFSLIA25,
    		  models.SMTLIB25.fullstrintpyconbytez3strQFSLIA25,
    		  models.SMTLIB25.strpredsmallrw25,
    		  models.SMTLIB25.strtermsmallrw25,
    		  models.SMTLIB25.sygusqgen25,
    		  models.SMTLIB25.sygusqgenqueriesQFS25,
    		  models.SMTLIB25.sygusqgenqueriesnoreeQFS25,
              ]:
        res = res+k.getTrackData (bname or "SMTLIB25")
    return res
