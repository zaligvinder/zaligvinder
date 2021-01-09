(declare-const X String)
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a"))))
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www") (re.* re.allchar) (str.to.re "ToolbartheServer:www.searchreslt.com\x0a"))))
; /(action|setup)=[a-z]{1,4}/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "action") (str.to.re "setup")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/Ri\x0a")))))
(check-sat)
