(declare-const X String)
; <title>+(.*?)</title>
(assert (not (str.in_re X (re.++ (str.to_re "<title") (re.+ (str.to_re ">")) (re.* re.allchar) (str.to_re "</title>\u{a}")))))
; /\u{2e}php\u{3f}[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in_re X (re.++ (str.to_re "/.php?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "0" "9")) (str.to_re "/iU\u{a}")))))
(check-sat)
