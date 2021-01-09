(declare-const X String)
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in.re X (re.++ (str.to.re "/obj\x0a") (re.* (str.to.re " ")) (str.to.re "/Pattern") (re.* (str.to.re " ")) (str.to.re "\x0aendobj/i\x0a")))))
; [\\s+,]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "s") (str.to.re "+") (str.to.re ",")) (str.to.re "\x0a")))))
(check-sat)
