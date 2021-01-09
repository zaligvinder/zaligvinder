(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a")))))
; /filename=[^\n]*\x2eses/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a"))))
; /filename=[^\n]*\x2ewsz/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wsz/i\x0a")))))
; ^([1-9]\d*|0)(([.,]\d*[1-9])?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.* (re.range "0" "9")) (re.range "1" "9"))) (str.to.re "\x0a")))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a")))
(check-sat)
