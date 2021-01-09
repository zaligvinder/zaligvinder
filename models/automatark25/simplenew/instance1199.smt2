(declare-const X String)
; \s*("[^"]+"|[^ ,]+)
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.+ (re.union (str.to.re " ") (str.to.re ",")))) (str.to.re "\x0a"))))
(check-sat)
