(declare-const X String)
; (1 )?\d{3} \d{3}-\d{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /5FDC81917DE08A41A6AC(E9B8ECA1EE.8|.98ECB1EEA8E)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/5FDC81917DE08A41A6AC") (re.union (re.++ (str.to.re "E9B8ECA1EE") re.allchar (str.to.re "8")) (re.++ re.allchar (str.to.re "98ECB1EEA8E"))) (str.to.re "/smi\x0a")))))
; /(^|&)filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pmi\x0a")))))
; ^\$( )*\d*(.\d{1,2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.* (str.to.re " ")) (re.* (re.range "0" "9")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
