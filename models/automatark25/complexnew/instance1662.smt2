(declare-const X String)
; ^([Vv]+(erdade(iro)?)?|[Ff]+(als[eo])?|[Tt]+(rue)?|0|[\+\-]?1)$
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.union (str.to_re "V") (str.to_re "v"))) (re.opt (re.++ (str.to_re "erdade") (re.opt (str.to_re "iro"))))) (re.++ (re.+ (re.union (str.to_re "F") (str.to_re "f"))) (re.opt (re.++ (str.to_re "als") (re.union (str.to_re "e") (str.to_re "o"))))) (re.++ (re.+ (re.union (str.to_re "T") (str.to_re "t"))) (re.opt (str.to_re "rue"))) (str.to_re "0") (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (str.to_re "1"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}vap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
(check-sat)
