(declare-const X String)
; ^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-") (str.to.re " ")) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; /(\d*\.?\d+)\s?(px|em|ex|%|in|cn|mm|pt|pc+)/igm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "px") (str.to.re "em") (str.to.re "ex") (str.to.re "%") (str.to.re "in") (str.to.re "cn") (str.to.re "mm") (str.to.re "pt") (re.++ (str.to.re "p") (re.+ (str.to.re "c")))) (str.to.re "/igm\x0a") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
; /STOR\x20PIC\x5f\d{6}[a-z]{2}\x5f\x20\x5f\d{7}\x20\x2e\d{3}/i
(assert (str.in.re X (re.++ (str.to.re "/STOR PIC_") ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_ _") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re " .") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/i\x0a"))))
; ^(0?[1-9]|1[012])/([012][0-9]|[1-9]|3[01])/([12][0-9]{3})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.range "1" "9") (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/\x0a") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
