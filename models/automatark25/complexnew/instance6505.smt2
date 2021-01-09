(declare-const X String)
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) ((_ re.loop 0 47) (re.union (str.to.re "\x5cs") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (str.to.re "\x0a"))))
; ^([012346789][0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//vic.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^(\d{1,3}'(\d{3}')*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{3})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "'") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "'"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
(check-sat)
