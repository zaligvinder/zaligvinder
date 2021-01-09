(declare-const X String)
; <[^>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\.mkv/
(assert (not (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".mkv/\x0a")))))
(check-sat)
