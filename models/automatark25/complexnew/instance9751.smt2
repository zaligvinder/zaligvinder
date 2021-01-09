(declare-const X String)
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (str.in.re X (str.to.re "AgentanswerHost:tool.world2.cn\x13TCwhenu.com\x13\x0a")))
; ^(((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2})$|^(((\d|([a-f]|[A-F])){2}-){5}(\d|([a-f]|[A-F])){2})$|^$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "-"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (str.to.re "\x0a")))))
(check-sat)
