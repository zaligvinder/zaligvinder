(declare-const X String)
; /\/m1\.exe$/U
(assert (str.in.re X (str.to.re "//m1.exe/U\x0a")))
; ([a-zA-Z]{2}[0-9]{1,2}\s{0,1}[0-9]{1,2}[a-zA-Z]{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; /\/jorg\.html$/U
(assert (not (str.in.re X (str.to.re "//jorg.html/U\x0a"))))
; /\x2e(jpg|png|gif)\x3fs?v.*?&tq=g[A-Z0-9]{2}/U
(assert (not (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jpg") (str.to.re "png") (str.to.re "gif")) (str.to.re "?") (re.opt (str.to.re "s")) (str.to.re "v") (re.* re.allchar) (str.to.re "&tq=g") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
