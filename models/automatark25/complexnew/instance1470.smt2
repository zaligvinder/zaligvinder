(declare-const X String)
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//app/?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
; ^[0-9]{1}$|^[1-6]{1}[0-3]{1}$|^64$|\-[1-9]{1}$|^\-[1-6]{1}[0-3]{1}$|^\-64$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "64") (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "-64\x0a")))))
(check-sat)
