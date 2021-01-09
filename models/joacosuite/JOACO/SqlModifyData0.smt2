(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var7 () String)
(declare-fun var8 () String)
(declare-fun var9 () String)
(declare-fun var11 () String)
(declare-fun var12 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in.re var12 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "'") (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++ (re.+  (str.to.re " ") )  (str.to.re "'"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "'") (re.++ (re.* re.allchar ) (re.++  (str.to.re "=") (re.++ (re.* re.allchar )  (str.to.re "'"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "'") (re.++ (re.*  (str.to.re " ") )  (re.union  (re.++  (str.to.re "\x2d")  (str.to.re "\x2d"))  (str.to.re "\x23")))) ) ) ))
(assert (= true (= (str.++ var9 "'" ) var8 ) ))
(assert (= true (= (str.++ var11 var12 ) var9 ) ))
(assert (= true (= "SELECT \x2a FROM salaries WHERE userid = '" var11 ) ))

(check-sat)
(get-model)