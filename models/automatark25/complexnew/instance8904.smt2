(declare-const X String)
; ^(^(100{1,1}$)|^(100{1,1}\.[0]+?$))|(^([0]*\d{0,2}$)|^([0]*\d{0,2}\.(([0][1-9]{1,1}[0]*)|([1-9]{1,1}[0]*)|([0]*)|([1-9]{1,2}[0]*)))$)$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ".") (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.* (str.to.re "0")) (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.* (str.to.re "0")))))) (str.to.re "\x0a")) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0"))) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0")) (str.to.re ".") (re.+ (str.to.re "0")))))))
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a")))))
(check-sat)
