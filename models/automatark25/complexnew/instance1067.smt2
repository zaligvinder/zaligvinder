(declare-const X String)
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (not (str.in.re X (str.to.re "/\xb6\xb6\xff\xff\xff\xff/\x0a"))))
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in.re X (str.to.re "SSKCstech.web-nexus.net\x0a")))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
; (^[+]?\d*\.?\d*[1-9]+\d*$)|(^[+]?[1-9]+\d*\.\d*$)
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")))))))
(check-sat)
