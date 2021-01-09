(declare-const X String)
; ^[-+]?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.com\x0a")))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a"))))
; body=\x2521\x2521\x2521Optix\s+Host\x3a
(assert (str.in.re X (re.++ (str.to.re "body=%21%21%21Optix\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
(check-sat)
