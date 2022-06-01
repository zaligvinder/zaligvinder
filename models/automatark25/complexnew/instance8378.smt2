(declare-const X String)
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 48 48) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in_re X (re.++ (str.to_re "/h=") (re.+ (re.range "0" "9")) (str.to_re "&w=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Psi\u{a}")))))
; start\s*([^$]*)\s*(.*?)
(assert (not (str.in_re X (re.++ (str.to_re "start") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re "$"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "\u{a}")))))
; is\u{7D}\u{7B}Port\u{3A}\u{7D}\u{7B}User\u{3A}
(assert (not (str.in_re X (str.to_re "is}{Port:}{User:\u{a}"))))
(check-sat)
