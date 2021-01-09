
(declare-fun beginWord () String)
(declare-fun endWord () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= endWord (str.++ (str.++ (str.substr beginWord 0 (- 0 0)) "d") (str.substr beginWord 1 (- (str.len beginWord) 1)))) 1 0) 0))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= beginWord "dot") 1 0) 0))) (>= 0 0)) (>= (- 0 0) 0)) (>= 1 0)) (>= (- (str.len beginWord) 1) 0)))

(check-sat)

;(get-value (beginWord))
;(get-value (endWord))





