(declare-const X String)
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 2 2) (re.range "0" "9"))))))
; ^([Vv]+(erdade(iro)?)?|[Ff]+(als[eo])?|[Tt]+(rue)?|0|[\+\-]?1)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.union (str.to.re "V") (str.to.re "v"))) (re.opt (re.++ (str.to.re "erdade") (re.opt (str.to.re "iro"))))) (re.++ (re.+ (re.union (str.to.re "F") (str.to.re "f"))) (re.opt (re.++ (str.to.re "als") (re.union (str.to.re "e") (str.to.re "o"))))) (re.++ (re.+ (re.union (str.to.re "T") (str.to.re "t"))) (re.opt (str.to.re "rue"))) (str.to.re "0") (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (str.to.re "1"))) (str.to.re "\x0a")))))
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in.re X (re.++ (str.to.re "/encoding=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a")))))
(check-sat)
