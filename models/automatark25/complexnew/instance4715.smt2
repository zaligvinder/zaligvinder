(declare-const X String)
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "YAHOO") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/cs/pop4/\x0a")))))
; /filename=[^\n]*\x2eram/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ram/i\x0a")))))
; function.*WEBCAM-.*User-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "function") (re.* re.allchar) (str.to.re "WEBCAM-") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
