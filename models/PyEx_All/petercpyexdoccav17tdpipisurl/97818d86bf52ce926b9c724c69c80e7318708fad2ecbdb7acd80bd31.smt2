;(set-logic ALL_SUPPORTED)
;(set-option :strings-exp true)
;(set-option :produce-models true)
;(set-option :rewrite-divk true)

(declare-fun url () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "G") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "F") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "E") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "B") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr url 0 (- (str.indexof url ":" 0) 0)) "A") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr url (+ (str.indexof url ":" 0) 1) (- (str.len url) (+ (str.indexof url ":" 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains url ":") 1 0) 0))) (not (not (= (ite (= (str.len url) 0) 1 0) 0)))) (not (= (ite (str.contains url ":") 1 0) 0))) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)) (>= (+ (str.indexof url ":" 0) 1) 0)) (>= (- (str.len url) (+ (str.indexof url ":" 0) 1)) 0)))

(check-sat)

;(get-value (url))