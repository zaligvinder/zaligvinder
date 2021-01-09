(declare-const X String)
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a")))))
; /^\/jhan.jar?r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "//jhan") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; ^([1-9]|[1-9]\d|100)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a"))))
(check-sat)
