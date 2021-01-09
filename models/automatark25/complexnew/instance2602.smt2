(declare-const X String)
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "now") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:e2give.com\x0a")))))
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
(check-sat)
