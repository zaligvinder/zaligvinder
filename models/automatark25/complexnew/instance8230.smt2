(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}")))))
; /filename=[^\n]*\u{2e}ses/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}"))))
; /filename=[^\n]*\u{2e}wsz/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wsz/i\u{a}")))))
; ^([1-9]\d*|0)(([.,]\d*[1-9])?)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to_re "0")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.* (re.range "0" "9")) (re.range "1" "9"))) (str.to_re "\u{a}")))))
; IPUSER-Host\u{3A}User-Agent\u{3A}\u{2F}searchfast\u{2F}
(assert (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}")))
(check-sat)
