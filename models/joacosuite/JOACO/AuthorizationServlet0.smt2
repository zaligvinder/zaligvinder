(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () String)
(declare-fun var5 () String)
(declare-fun var7 () String)
(declare-fun var8 () String)
(declare-fun var9 () String)
(declare-fun var22 () String)
(declare-fun var10 () String)
(declare-fun var12 () Bool)
(declare-fun var15 () String)
(declare-fun var16 () String)
(declare-fun var17 () String)
(declare-fun var18 () String)
(declare-fun var20 () String)
(declare-fun var21 () Bool)

(assert (= true (str.in.re var22  (re.union  (re.++  (str.to.re "\x3c") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++ (re.*  (str.to.re " ") ) (re.++  (str.to.re "\x3e") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to.re "\x28") (re.union  (str.to.re "\x29")  (str.to.re ";")))))) ) (re.++  (str.to.re "\x3c") (re.++  (str.to.re "/") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++  (str.to.re " ")  (str.to.re "\x3e"))))))))))))))))))))))  (re.++  (str.to.re "\x3c") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "M")  (str.to.re "m")) (re.++  (re.union  (str.to.re "G")  (str.to.re "g")) (re.++  (str.to.re " ") (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (str.to.re "=") (re.++  (re.union  (str.to.re "J")  (str.to.re "j")) (re.++  (re.union  (str.to.re "A")  (str.to.re "a")) (re.++  (re.union  (str.to.re "V")  (str.to.re "v")) (re.++  (re.union  (str.to.re "A")  (str.to.re "a")) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++  (str.to.re ":") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to.re "\x28") (re.union  (str.to.re "\x29")  (str.to.re ";")))))) ) (re.++ (re.*  (str.to.re " ") )  (str.to.re "\x3e"))))))))))))))))))))))))) ) ))
(assert (= true (= var2  var1 ) ))
(assert (= true (= (str.++ var3 "in the client\x2e" ) var2 ) ))
(assert (= true (= (str.++ var5 "'\x2e Please close this browser window and click continue" ) var3 ) ))
(assert (= true (= (str.++ var7 var8 ) var5 ) ))
(assert (= true (= var9 var8 ) ))
(assert (= true (= var22 var22 ) ))
(assert (= true (= (str.++ var10 "You have successfully authorized for consumer key '" ) var7 ) ))
(assert (= true (not (= true var12 )) ))
(assert (= true (= (= "none" var15 ) var12 ) ))
(assert (= true (or (= var15 var17 ) (= var15 var16 ) ) ))
(assert (= true (= "" var18 ) ))
(assert (= true (= var20 var18 ) ))
(assert (= true (not (= true var21 )) ))
(assert (= true (= (= "none" var16 ) var21 ) ))

(check-sat)
(get-model)