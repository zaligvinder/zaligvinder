(set-logic ALL)
(set-option :produce-models true)

(declare-fun var7 () String)
(declare-fun var8 () String)
(declare-fun var9 () String)
(declare-fun var11 () String)
(declare-fun var12 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in_re var12 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to_re "'") (re.++ (re.+  (str.to_re " ") ) (re.++  (re.union  (str.to_re "O")  (str.to_re "o")) (re.++  (re.union  (str.to_re "R")  (str.to_re "r")) (re.++ (re.+  (str.to_re " ") )  (str.to_re "'"))))))) (str.to_re sv1) ) (re.++  (re.++  (str.to_re "'") (re.++ (re.* re.allchar ) (re.++  (str.to_re "=") (re.++ (re.* re.allchar )  (str.to_re "'"))))) (str.to_re sv2) ) )  (re.++  (str.to_re "'") (re.++ (re.*  (str.to_re " ") )  (re.union  (re.++  (str.to_re "\u{2d}")  (str.to_re "\u{2d}"))  (str.to_re "\u{23}")))) ) ) ))
(assert (= true (= (str.++ var9 "'" ) var8 ) ))
(assert (= true (= (str.++ var11 var12 ) var9 ) ))
(assert (= true (= "SELECT \u{2a} FROM salaries WHERE userid = '" var11 ) ))

(check-sat)
(get-model)