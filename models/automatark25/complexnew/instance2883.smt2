(declare-const X String)
; ^\d{1,3}((\.\d{1,3}){3}|(\.\d{1,3}){5})$
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union ((_ re.loop 3 3) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) ((_ re.loop 5 5) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":8000/") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
