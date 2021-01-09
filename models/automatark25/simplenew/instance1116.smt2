(declare-const X String)
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "&a=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
