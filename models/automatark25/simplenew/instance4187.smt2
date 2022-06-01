(declare-const X String)
; www\u{2E}webcruiser\u{2E}ccJMailBoxHostGENERAL_PARAM2FT
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\u{a}"))))
(check-sat)
