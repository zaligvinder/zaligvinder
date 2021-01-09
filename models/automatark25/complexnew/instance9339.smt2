(declare-const X String)
; /filename=[^\n]*\x2eplf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a"))))
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GETwww.oemji.com\x0a")))))
; ([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)|([0-9]+)
(assert (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; (^\d{9}[V|v|x|X]$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "V") (str.to.re "|") (str.to.re "v") (str.to.re "x") (str.to.re "X")))))
(check-sat)
