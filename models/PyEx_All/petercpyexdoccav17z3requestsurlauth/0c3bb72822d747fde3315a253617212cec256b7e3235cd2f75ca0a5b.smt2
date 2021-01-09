(declare-fun url () String)

(assert (not (not (= (ite (> (str.indexof url ":" 0) 0) 1 0) 0))))

(check-sat)

;(get-value (url))