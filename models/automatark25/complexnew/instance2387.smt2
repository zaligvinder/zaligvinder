(declare-const X String)
; /filename=[^\n]*\x2exfdl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xfdl/i\x0a"))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "www.maxifiles.com") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.com\x0a"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a")))))
(check-sat)
