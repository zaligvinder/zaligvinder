(declare-const X String)
; @([_a-zA-Z]+)
(assert (str.in.re X (re.++ (str.to.re "@") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; (.*\.jpe?g|.*\.JPE?G)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".jp") (re.opt (str.to.re "e")) (str.to.re "g")) (re.++ (re.* re.allchar) (str.to.re ".JP") (re.opt (str.to.re "E")) (str.to.re "G"))) (str.to.re "\x0a"))))
; Test\d+DesktopAddressIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY666User-Agent:[Static\x0a")))))
(check-sat)
