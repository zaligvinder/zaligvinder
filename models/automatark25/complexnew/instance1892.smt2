(declare-const X String)
; /^\x2F40e800[0-9A-F]{30,}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//40e800/Ui\x0a") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F"))))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(([8]))$|^((([0-7]))$|^((([0-7])).?((25)|(50)|(5)|(75)|(0)|(00))))$
(assert (not (str.in.re X (re.union (str.to.re "8") (re.++ (re.union (re.range "0" "7") (re.++ (re.range "0" "7") (re.opt re.allchar) (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00")))) (str.to.re "\x0a"))))))
; Host\x3A\w+www.*ToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www") (re.* re.allchar) (str.to.re "ToolbartheServer:www.searchreslt.com\x0a"))))
(check-sat)
