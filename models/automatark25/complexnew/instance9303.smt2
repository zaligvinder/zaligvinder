(declare-const X String)
; User-Agent\x3aHost\x3Apasswordhavewww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:passwordhavewww.alfacleaner.com\x0a")))
; ^([0-9a-f]{0,4}:){2,7}(:|[0-9a-f]{1,4})$
(assert (str.in.re X (re.++ ((_ re.loop 2 7) (re.++ ((_ re.loop 0 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ":"))) (re.union (str.to.re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f")))) (str.to.re "\x0a"))))
; /^\x2F40e800[0-9A-F]{30,}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//40e800/Ui\x0a") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F")))))))
(check-sat)
