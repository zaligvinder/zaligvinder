(declare-const X String)
; www\u{2E}webcruiser\u{2E}ccJMailBoxHostGENERAL_PARAM2FT
(assert (str.in_re X (str.to_re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\u{a}")))
; fsbuffsearch\u{2e}conduit\u{2e}comocllceclbhs\u{2f}gth
(assert (str.in_re X (str.to_re "fsbuffsearch.conduit.comocllceclbhs/gth\u{a}")))
(check-sat)
