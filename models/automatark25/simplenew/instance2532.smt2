(declare-const X String)
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a"))))
(check-sat)
