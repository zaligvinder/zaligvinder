(declare-fun json () String)

(assert (and (not (not (not (= (ite (not (= (str.len json) 45)) 1 0) 0)))) (not (not (= (ite (str.prefixof "\xef\xbb\xbf" json) 1 0) 0)))))

(check-sat)

;(get-value (json))