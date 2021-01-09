
(declare-fun word () String)
(declare-fun abbr () String)

(assert (and (not (not (= (ite (= (str.len word) 0) 1 0) 0))) (not (= (ite (<= (str.len abbr) 0) 1 0) 0))))

(check-sat)

;(get-value (word))
;(get-value (abbr))





