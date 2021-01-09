(declare-const X String)
; \x2Fsearchfast\x2F\s+Host\x3A\s+
(assert (str.in.re X (re.++ (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; /q=[a-f0-9]+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
