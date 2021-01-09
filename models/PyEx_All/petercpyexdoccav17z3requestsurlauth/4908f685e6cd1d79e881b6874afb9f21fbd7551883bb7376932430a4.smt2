(declare-fun url () String)

(assert (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr url (+ (str.indexof url ":" 0) 1) (- (str.len url) (+ (str.indexof url ":" 0) 1))) ";") 1 0) 0)))) (not (= (ite (= (str.substr url 0 (- (str.indexof url ":" 0) 0)) "ftp") 1 0) 0))) (>= (+ (str.indexof url ":" 0) 1) 0)) (>= (- (str.len url) (+ (str.indexof url ":" 0) 1)) 0)) (>= 0 0)) (>= (- (str.indexof url ":" 0) 0) 0)))

(check-sat)

;(get-value (url))