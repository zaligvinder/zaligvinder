(declare-const X String)
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.range "0" "9") (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))))))
; ^(([0]([2|3|4|5|6|8|9|7])))\d{7,8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a0") (re.union (str.to.re "2") (str.to.re "|") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "8") (str.to.re "9") (str.to.re "7"))))))
; User-Agent\x3A\w+data2\.activshopper\.comdll\x3F
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.comdll?\x0a"))))
(check-sat)
