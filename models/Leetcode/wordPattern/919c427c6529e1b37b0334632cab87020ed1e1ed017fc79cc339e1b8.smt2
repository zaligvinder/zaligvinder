
(declare-fun pattern () String)
(declare-fun str () String)

(assert (and (and (and (and (not (not (not (= (ite (not (= (str.at pattern 0) (str.at pattern 0))) 1 0) 0)))) (not (not (= (ite (not (= str str)) 1 0) 0)))) (not (not (= (ite (not (= (str.len pattern) 1)) 1 0) 0)))) (not (not (= (ite (str.contains str " ") 1 0) 0)))) (not (not (= (ite (= (str.len str) 0) 1 0) 0)))))

(check-sat)

;(get-value (pattern))
;(get-value (str))





