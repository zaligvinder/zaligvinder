(declare-const X String)
; ^((0[1-9])|(1[0-2]))\/*((2011)|(20[1-9][1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (str.to.re "/")) (re.union (str.to.re "2011") (re.++ (str.to.re "20") (re.range "1" "9") (re.range "1" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "xbqyosoe/cpvmAdToolsconnectedNodes\x0a")))))
; [+-]?\d(\.\d+)?[Ee][+-]?\d+
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (re.union (str.to.re "E") (str.to.re "e")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
; ^[\\(]{0,1}([0-9]){3}[\\)]{0,1}[ ]?([^0-1]){1}([0-9]){2}[ ]?[-]?[ ]?([0-9]){4}[ ]*((x){0,1}([0-9]){1,5}){0,1}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "\x5c") (str.to.re "("))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "\x5c") (str.to.re ")"))) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.++ (re.opt (str.to.re "x")) ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
