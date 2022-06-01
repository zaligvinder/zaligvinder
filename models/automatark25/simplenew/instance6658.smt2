(declare-const X String)
; Strip-Player.*MyAgent.*\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "Strip-Player\u{1b}") (re.* re.allchar) (str.to_re "MyAgent") (re.* re.allchar) (str.to_re "/newsurfer4/\u{a}")))))
(check-sat)
