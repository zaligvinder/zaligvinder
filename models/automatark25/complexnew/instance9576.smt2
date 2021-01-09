(declare-const X String)
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "'") (re.* re.allchar)) (re.++ (str.to.re "Rem") (re.union (str.to.re "\x09") (str.to.re " ")) (re.* re.allchar)) (re.++ (str.to.re "\x22") (re.* (re.union re.allchar (str.to.re "\x22\x22"))) (str.to.re "\x22"))) (str.to.re "\x0a"))))
; ^(\d+|(\d*\.{1}\d{1,2}){1})$
(assert (str.in.re X (re.++ (re.union (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; ^(102[0-3]|10[0-1]\d|[1-9][0-9]{0,2}|0)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "102") (re.range "0" "3")) (re.++ (str.to.re "10") (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a")))))
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a")))))
(check-sat)
