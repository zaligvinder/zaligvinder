(declare-const X String)
; [0-9a-fA-F]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (not (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a"))))
(check-sat)
