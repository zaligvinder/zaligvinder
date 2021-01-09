
(declare-fun word () String)
(declare-fun abbr () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= (str.len word) 7) 1 0) 0))) (not (not (= (ite (not (= (str.at word 6) (str.at abbr 6))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 6) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 5) (str.at abbr 5))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 5) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 4) (str.at abbr 4))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 4) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 3) (str.at abbr 3))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 3) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 2) (str.at abbr 2))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 2) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 1) (str.at abbr 1))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 1) 1 0) 0)))) (not (not (= (ite (not (= (str.at word 0) (str.at abbr 0))) 1 0) 0)))) (not (not (= (ite (<= (str.len word) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len abbr) 0) 1 0) 0)))))

(check-sat)

;(get-value (word))
;(get-value (abbr))





