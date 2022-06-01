(declare-const X String)
; \u{2F}newsurfer4\u{2F}OK\r\nencodertvlistingsTM_SEARCH3
(assert (str.in_re X (str.to_re "/newsurfer4/OK\u{d}\u{a}encodertvlistingsTM_SEARCH3\u{a}")))
(check-sat)
