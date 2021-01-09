(declare-const X String)
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to.re "X") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emka/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (not (str.in.re X (re.++ (str.to.re "p") (re.opt (str.to.re "ost")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (str.to.re "o") (re.opt (str.to.re "ffice")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (re.opt (str.to.re "box")) (re.* (re.union (str.to.re " ") (re.range "0" "9"))) (re.union (str.to.re "[") (re.range "a" "z") (str.to.re " ")) (re.* (str.to.re "]")) (str.to.re "\x0a")))))
(check-sat)
