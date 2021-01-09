(declare-const X String)
; /filename=[^\n]*\x2ejpm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpm/i\x0a"))))
; (\/\/)(.+)(\/\/)
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ re.allchar) (str.to.re "//\x0a"))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a"))))
(check-sat)
