
(declare-fun in1 () String)
(declare-fun in0 () String)

(assert (and (and (and (and (and (and (not (not (not (= (ite (not (= (str.at in1 6) (str.at in0 6))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 5) (str.at in0 5))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 4) (str.at in0 4))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 3) (str.at in0 3))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 2) (str.at in0 2))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 1) (str.at in0 1))) 1 0) 0)))) (not (not (= (ite (not (= (str.at in1 0) (str.at in0 0))) 1 0) 0)))))

(check-sat)

;(get-value (in1))
;(get-value (in0))





