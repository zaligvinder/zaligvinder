(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var5 () Bool)
(declare-fun var7 () String)
(declare-fun var8 () String)
(declare-fun var11 () String)
(declare-fun var4 () String)
(declare-fun var17 () String)
(declare-fun var18 () String)
(declare-fun sv7 () Int)
(declare-fun sv8 () Int)

(assert (= true (>= sv7 sv8 ) ))
(assert (= true (str.in.re var11 (re.++ (re.++ (re.++  (re.++ (re.+ (re.range "0" "9") ) (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.+  (str.to.re " ") ))))) (str.to.re (int.to.str sv7 )) )  (re.++ (re.+  (str.to.re " ") ) (re.++  (str.to.re "\x3e") (re.++  (str.to.re "=") (re.+  (str.to.re " ") )))) ) (str.to.re (int.to.str sv8 )) ) ) ))
(assert (= true (= true var5 ) ))
(assert (= true (= (= var7 var8 ) var5 ) ))
(assert (= true (= var11  var7 ) ))
(assert (= true (= var17  var4 ) ))
(assert (= true (= (str.++ var18 var11 ) var17 ) ))
(assert (= true (= "SELECT \x2a FROM user_data WHERE userid =" var18 ) ))

(check-sat)
(get-model)