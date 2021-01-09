(declare-const X String)
; /(action|setup)=[a-z]{1,4}/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "action") (str.to.re "setup")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/Ri\x0a")))))
; ( xmlns:.*=[",'].*[",'])|( xmlns=[",'].*[",'])
(assert (not (str.in.re X (re.union (re.++ (str.to.re " xmlns:") (re.* re.allchar) (str.to.re "=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))) (re.++ (str.to.re "\x0a xmlns=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")))))))
; ^([7-9]{1})([0-9]{9})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "&a=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
