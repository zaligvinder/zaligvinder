(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "aabb$$!!PPdd"))))
(assert (str.in.re x (re.+ (str.to.re "aaAAhh''\\\\\\\\nn''''{{::iiDD^^GGbbTTEE;;>>qq))"))))
(assert (> (str.to.int x) 56))
(assert (< (str.len x) 6))
(check-sat)
