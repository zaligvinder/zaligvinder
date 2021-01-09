(declare-const X String)
; \x2Fnewsurfer4\x2FOK\r\nencodertvlistingsTM_SEARCH3
(assert (str.in.re X (str.to.re "/newsurfer4/OK\x0d\x0aencodertvlistingsTM_SEARCH3\x0a")))
(check-sat)
