(set-logic ALL)
(set-option :produce-models true)

(declare-fun var20 () String)
(declare-fun var7 () String)
(declare-fun var16 () String)
(declare-fun var11 () String)
(declare-fun var23 () String)

(assert (= true (str.in_re var20  (re.union  (re.++  (str.to_re "\u{3c}") (re.++ (re.*  (str.to_re " ") ) (re.++  (re.union  (str.to_re "S")  (str.to_re "s")) (re.++  (re.union  (str.to_re "C")  (str.to_re "c")) (re.++  (re.union  (str.to_re "R")  (str.to_re "r")) (re.++  (re.union  (str.to_re "I")  (str.to_re "i")) (re.++  (re.union  (str.to_re "P")  (str.to_re "p")) (re.++  (re.union  (str.to_re "T")  (str.to_re "t")) (re.++ (re.*  (str.to_re " ") ) (re.++  (str.to_re "\u{3e}") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to_re "\u{28}") (re.union  (str.to_re "\u{29}")  (str.to_re ";")))))) ) (re.++  (str.to_re "\u{3c}") (re.++  (str.to_re "/") (re.++ (re.*  (str.to_re " ") ) (re.++  (re.union  (str.to_re "S")  (str.to_re "s")) (re.++  (re.union  (str.to_re "C")  (str.to_re "c")) (re.++  (re.union  (str.to_re "R")  (str.to_re "r")) (re.++  (re.union  (str.to_re "I")  (str.to_re "i")) (re.++  (re.union  (str.to_re "P")  (str.to_re "p")) (re.++  (re.union  (str.to_re "T")  (str.to_re "t")) (re.++  (str.to_re " ")  (str.to_re "\u{3e}"))))))))))))))))))))))  (re.++  (str.to_re "\u{3c}") (re.++ (re.*  (str.to_re " ") ) (re.++  (re.union  (str.to_re "I")  (str.to_re "i")) (re.++  (re.union  (str.to_re "M")  (str.to_re "m")) (re.++  (re.union  (str.to_re "G")  (str.to_re "g")) (re.++  (str.to_re " ") (re.++  (re.union  (str.to_re "S")  (str.to_re "s")) (re.++  (re.union  (str.to_re "R")  (str.to_re "r")) (re.++  (re.union  (str.to_re "C")  (str.to_re "c")) (re.++  (str.to_re "=") (re.++  (re.union  (str.to_re "J")  (str.to_re "j")) (re.++  (re.union  (str.to_re "A")  (str.to_re "a")) (re.++  (re.union  (str.to_re "V")  (str.to_re "v")) (re.++  (re.union  (str.to_re "A")  (str.to_re "a")) (re.++  (re.union  (str.to_re "S")  (str.to_re "s")) (re.++  (re.union  (str.to_re "C")  (str.to_re "c")) (re.++  (re.union  (str.to_re "R")  (str.to_re "r")) (re.++  (re.union  (str.to_re "I")  (str.to_re "i")) (re.++  (re.union  (str.to_re "P")  (str.to_re "p")) (re.++  (re.union  (str.to_re "T")  (str.to_re "t")) (re.++  (str.to_re ":") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to_re "\u{28}") (re.union  (str.to_re "\u{29}")  (str.to_re ";")))))) ) (re.++ (re.*  (str.to_re " ") )  (str.to_re "\u{3e}"))))))))))))))))))))))))) ) ))
(assert (= true (not (= "" var20 )) ))
(assert (= true (not (= "" var7 )) ))
(assert (= true (= var11 var16 ) ))
(assert (= true (not (= "" var23 )) ))

(check-sat)
(get-model)