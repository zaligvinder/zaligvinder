(declare-const X String)
; stats\x2edrivecleaner\x2ecom\sPARSERInformationurl=Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "stats.drivecleaner.com\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSERInformationurl=Host:\x0a")))))
; /filename=[^\n]*\x2empeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a"))))
(check-sat)
