(declare-const X String)
; www.*tool\x2Eworld2\x2Ecn
(assert (not (str.in.re X (re.++ (str.to.re "www") (re.* re.allchar) (str.to.re "tool.world2.cn\x13\x0a")))))
(check-sat)
