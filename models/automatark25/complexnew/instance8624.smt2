(declare-const X String)
; ^(0|(-?(((0|[1-9]\d*)\.\d+)|([1-9]\d*))))$
(assert (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))))) (str.to.re "\x0a"))))
; OS\x2F\dSpediacom\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "OS/") (re.range "0" "9") (str.to.re "Spediacom/index.php?tpid=\x0a"))))
; CZ\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|CZ\d{22}
(assert (not (str.in.re X (re.++ (str.to.re "CZ") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 22 22) (re.range "0" "9")) (str.to.re "\x0a")))))))
(check-sat)
