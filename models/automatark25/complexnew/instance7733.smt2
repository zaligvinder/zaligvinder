(declare-const X String)
; requested.*zmnjgmomgbdz\x2fzzmw\.gzt\s+Reportsdaosearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "requested") (re.* re.allchar) (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reportsdaosearch.com\x0a")))))
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\x0a")))
; (^[0-9]{1,8}|(^[0-9]{1,8}\.{0,1}[0-9]{1,2}))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
