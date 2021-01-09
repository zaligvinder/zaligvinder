(declare-const X String)
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (str.in.re X (str.to.re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\x0a")))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "fsbuffsearch.conduit.comocllceclbhs/gth\x0a")))
(check-sat)
