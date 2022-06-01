(declare-fun json () String)

(assert (not (not (not (= (ite (str.prefixof "\u{ef}\u{bb}\u{bf}" json) 1 0) 0)))))

(check-sat)

;(get-value (json))