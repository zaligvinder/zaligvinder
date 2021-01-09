(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a")))
; ^\b(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)\\/(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x5c/") (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a"))))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in.re X (str.to.re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\x0a"))))
; Host\x3AAttachedengineact=Download
(assert (not (str.in.re X (str.to.re "Host:Attachedengineact=Download\x0a"))))
(check-sat)
