(set-logic ALL)
(set-info :status sat)

(declare-const x String)

(declare-const y String)

(declare-const z String)


(assert (= y (str.replace x "'" "\\'")) ) 

(assert (= z (str.replace x "p" "_p")) ) 


(check-sat) 

(get-model)
