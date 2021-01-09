(declare-const X String)
; ^[a-zA-Z]{1}[-][0-9]{7}[-][a-zA-Z]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (not (str.in.re X (re.++ (str.to.re "p") (re.opt (str.to.re "ost")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (str.to.re "o") (re.opt (str.to.re "ffice")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (re.opt (str.to.re "box")) (re.* (re.union (str.to.re " ") (re.range "0" "9"))) (re.union (str.to.re "[") (re.range "a" "z") (str.to.re " ")) (re.* (str.to.re "]")) (str.to.re "\x0a")))))
(check-sat)
