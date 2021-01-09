(declare-const X String)
; /filename=[^\n]*\x2ewrf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wrf/i\x0a"))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a")))))
(check-sat)
