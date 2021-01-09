(declare-const X String)
; /5FDC81917DE08A41A6AC(E9B8ECA1EE.8|.98ECB1EEA8E)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/5FDC81917DE08A41A6AC") (re.union (re.++ (str.to.re "E9B8ECA1EE") re.allchar (str.to.re "8")) (re.++ re.allchar (str.to.re "98ECB1EEA8E"))) (str.to.re "/smi\x0a")))))
; ^
(assert (str.in.re X (str.to.re "\x0a")))
(check-sat)
