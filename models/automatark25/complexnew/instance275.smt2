(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (not (str.in.re X (str.to.re "\x0a\x0d   replacement string---->\x0a\x0a"))))
; /setup=[a-z]$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "/Ui\x0a")))))
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (not (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
