(declare-fun cookievalue () String)

(assert (not (not (not (= (ite (str.prefixof """" cookievalue) 1 0) 0)))))

(check-sat)

;(get-value (cookievalue))