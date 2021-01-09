(declare-fun address () String)

(assert (not (not (not (= (ite (str.contains address "/") 1 0) 0)))))

(check-sat)

;(get-value (address))