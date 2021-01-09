(declare-const X String)
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (not (str.in.re X (re.++ (str.to.re "myInstance.myMethod") (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re "myParam") (re.* re.allchar) (str.to.re ")\x0a")))))
; User-Agent\x3a\w+Owner\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a"))))
; /filename=[^\n]*\x2ebcl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a"))))
(check-sat)
