(declare-const X String)
; ^([Vv]+(erdade(iro)?)?|[Ff]+(als[eo])?|[Tt]+(rue)?|0|[\+\-]?1)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.+ (re.union (str.to.re "V") (str.to.re "v"))) (re.opt (re.++ (str.to.re "erdade") (re.opt (str.to.re "iro"))))) (re.++ (re.+ (re.union (str.to.re "F") (str.to.re "f"))) (re.opt (re.++ (str.to.re "als") (re.union (str.to.re "e") (str.to.re "o"))))) (re.++ (re.+ (re.union (str.to.re "T") (str.to.re "t"))) (re.opt (str.to.re "rue"))) (str.to.re "0") (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (str.to.re "1"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
(check-sat)
