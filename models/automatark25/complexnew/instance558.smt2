(declare-const X String)
; User-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:URLencoderthis|Connected\x0a")))
; /filename=[^\n]*\x2ecy3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cy3/i\x0a")))))
; /filename=[^\n]*\x2edir/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dir/i\x0a")))))
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
