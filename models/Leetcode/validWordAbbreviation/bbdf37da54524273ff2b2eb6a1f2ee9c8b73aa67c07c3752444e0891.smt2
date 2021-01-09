
(declare-fun abbr () String)

(assert (not (not (not (= (ite (<= (str.len abbr) 0) 1 0) 0)))))

(check-sat)

;(get-value (abbr))





