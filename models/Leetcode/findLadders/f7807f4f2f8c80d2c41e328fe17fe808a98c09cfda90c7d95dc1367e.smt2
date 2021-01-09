
(declare-fun endWord () String)
(declare-fun beginWord () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= endWord (str.++ (str.++ (str.substr beginWord 0 (- 1 0)) "o") (str.substr beginWord 2 (- (str.len beginWord) 2)))) 1 0) 0))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= endWord (str.++ (str.++ (str.substr beginWord 0 (- 0 0)) "l") (str.substr beginWord 1 (- (str.len beginWord) 1)))) 1 0) 0))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= endWord (str.++ (str.++ (str.substr beginWord 0 (- 2 0)) "g") (str.substr beginWord 3 (- (str.len beginWord) 3)))) 1 0) 0))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= (str.++ (str.++ (str.substr beginWord 0 (- 0 0)) "d") (str.substr beginWord 1 (- (str.len beginWord) 1))) "dog") 1 0) 0))) (not (= (ite (= (str.++ (str.++ (str.substr beginWord 0 (- 0 0)) "d") (str.substr beginWord 1 (- (str.len beginWord) 1))) "dog") 1 0) 0))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (not (= (ite (<= (str.len beginWord) 0) 1 0) 0)))) (not (= (ite (= beginWord "log") 1 0) 0))) (>= 0 0)) (>= (- 1 0) 0)) (>= 2 0)) (>= (- (str.len beginWord) 2) 0)) (>= 0 0)) (>= (- 0 0) 0)) (>= 1 0)) (>= (- (str.len beginWord) 1) 0)) (>= 0 0)) (>= (- 2 0) 0)) (>= 3 0)) (>= (- (str.len beginWord) 3) 0)) (>= 0 0)) (>= (- 0 0) 0)) (>= 1 0)) (>= (- (str.len beginWord) 1) 0)) (>= 0 0)) (>= (- 0 0) 0)) (>= 1 0)) (>= (- (str.len beginWord) 1) 0)))

(check-sat)

;(get-value (endWord))
;(get-value (beginWord))





