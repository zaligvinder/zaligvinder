(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (not (str.in.re X (str.to.re "195.225.<title>Actual\x0a"))))
; /filename=[^\n]*\x2ecis/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cis/i\x0a")))))
(check-sat)
