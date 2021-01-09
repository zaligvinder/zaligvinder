(declare-const X String)
; ([A-Za-z0-9.]+\s*)+,
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re ",\x0a")))))
(check-sat)
