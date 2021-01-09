(declare-fun key2 () String)

(assert (and (and (and (and (and (and (not (not (not (= (ite (str.contains key2 "G") 1 0) 0)))) (not (not (= (ite (str.contains key2 "F") 1 0) 0)))) (not (not (= (ite (str.contains key2 "E") 1 0) 0)))) (not (not (= (ite (str.contains key2 "D") 1 0) 0)))) (not (not (= (ite (str.contains key2 "C") 1 0) 0)))) (not (not (= (ite (str.contains key2 "B") 1 0) 0)))) (not (not (= (ite (str.contains key2 "A") 1 0) 0)))))

(check-sat)

;(get-value (key2))