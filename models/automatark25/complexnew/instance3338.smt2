(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a"))))
; ^([1-9]|(0|1|2)[0-9]|30)(/|-)([1-9]|1[0-2]|0[1-9])(/|-)(14[0-9]{2})$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (str.to.re "\x0a14") ((_ re.loop 2 2) (re.range "0" "9")))))
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ re.allchar) (str.to.re "]") (re.+ re.allchar) (str.to.re "[") (re.opt (str.to.re "n")) (str.to.re "varchar]") (re.+ re.allchar) (str.to.re "NULL,\x0a")))))
; ^(^(100{1,1}$)|^(100{1,1}\.[0]+?$))|(^([0]*\d{0,2}$)|^([0]*\d{0,2}\.(([0][1-9]{1,1}[0]*)|([1-9]{1,1}[0]*)|([0]*)|([1-9]{1,2}[0]*)))$)$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ".") (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.* (str.to.re "0")) (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.* (str.to.re "0")))))) (str.to.re "\x0a")) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0"))) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0")) (str.to.re ".") (re.+ (str.to.re "0")))))))
(check-sat)
