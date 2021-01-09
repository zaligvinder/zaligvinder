(declare-const X String)
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (str.in.re X (re.++ (str.to.re "p") (re.opt (str.to.re "ost")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (str.to.re "o") (re.opt (str.to.re "ffice")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (re.opt (str.to.re "box")) (re.* (re.union (str.to.re " ") (re.range "0" "9"))) (re.union (str.to.re "[") (re.range "a" "z") (str.to.re " ")) (re.* (str.to.re "]")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ef4b/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4b/i\x0a")))))
; /^\x01\x02.{0,50}[a-zA-Z]{10}\x2fPK.{0,50}[a-zA-Z]{10}\x2f[a-zA-Z]{7}\.classPK/sR
(assert (not (str.in.re X (re.++ (str.to.re "/\x01\x02") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".classPK/sR\x0a")))))
(check-sat)
