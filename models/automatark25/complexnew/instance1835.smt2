(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to_re "5") (str.to_re "0")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "0") (str.to_re "00"))) (str.to_re "\u{a}"))))
; /filename=[a-z]+\.jat/
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{a}")))))
; User-Agent\u{3A}\s+\u{7D}\u{7B}Password\u{3A}Anal
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}Anal\u{a}")))))
(check-sat)
