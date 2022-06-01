(declare-const X String)
; /5FDC81917DE08A41A6AC(E9B8ECA1EE.8|.98ECB1EEA8E)/smi
(assert (not (str.in_re X (re.++ (str.to_re "/5FDC81917DE08A41A6AC") (re.union (re.++ (str.to_re "E9B8ECA1EE") re.allchar (str.to_re "8")) (re.++ re.allchar (str.to_re "98ECB1EEA8E"))) (str.to_re "/smi\u{a}")))))
; ^
(assert (str.in_re X (str.to_re "\u{a}")))
(check-sat)
