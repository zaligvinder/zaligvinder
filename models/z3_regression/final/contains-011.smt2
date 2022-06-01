(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const b1 Bool)

(assert (= b1 (str.contains "abcd_efgadc" "efg" ) ) )

(check-sat)
(get-model)
