(declare-fun key2 () String)

(assert (not (not (not (= (ite (str.contains key2 "A") 1 0) 0)))))

(check-sat)

;(get-value (key2))