(declare-const X String)
; /filename=[^\n]*\x2epub/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pub/i\x0a")))))
; (LT-?)?([0-9]{9}|[0-9]{12})
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "LT") (re.opt (str.to.re "-")))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3A\d+Theef2\sHost\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a"))))
; Host\x3A\s+\.ico.*SpyAgentHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.* re.allchar) (str.to.re "SpyAgentHost:\x0a"))))
(check-sat)
