(declare-const X String)
; ^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-") (str.to.re " ")) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; User-Agent\x3a\w+Owner\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a"))))
; User-Agent\x3a[^\n\r]*Echelon.*Blacksnprtz\x7CdialnoSearch
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Echelon") (re.* re.allchar) (str.to.re "Blacksnprtz|dialnoSearch\x0a"))))
; ^\S{2}\d{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
