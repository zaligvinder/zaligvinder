(declare-const X String)
; <[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; fsbuffsearch\u{2e}conduit\u{2e}comocllceclbhs\u{2f}gth
(assert (not (str.in_re X (str.to_re "fsbuffsearch.conduit.comocllceclbhs/gth\u{a}"))))
; /filename=[^\n]*\u{2e}wmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmx/i\u{a}"))))
(check-sat)
