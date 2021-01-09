(declare-fun key1 () String)

(assert (and (and (and (not (not (not (= (ite (str.contains (str.substr key1 (+ (str.indexof key1 "A" 0) 1) (- (str.len key1) (+ (str.indexof key1 "A" 0) 1))) "A") 1 0) 0)))) (not (= (ite (str.contains key1 "A") 1 0) 0))) (>= (+ (str.indexof key1 "A" 0) 1) 0)) (>= (- (str.len key1) (+ (str.indexof key1 "A" 0) 1)) 0)))

(check-sat)

;(get-value (key1))