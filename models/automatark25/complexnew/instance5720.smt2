(declare-const X String)
; ^[+]?((\d*[1-9]+\d*\.?\d*)|(\d*\.\d*[1-9]+\d*))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.union (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([a-zA-Z]+(.)?[\s]*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a"))))
(check-sat)
