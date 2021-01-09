(declare-const X String)
; /filename=[^\n]*\x2exm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xm/i\x0a")))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a")))))
; ^((((0?[13578])|(1[02]))[\/|\-]?((0?[1-9]|[0-2][0-9])|(3[01])))|(((0?[469])|(11))[\/|\-]?((0?[1-9]|[0-2][0-9])|(30)))|(0?[2][\/\-]?(0?[1-9]|[0-2][0-9])))[\/\-]?\d{2,4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2")))) (re.opt (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-"))) (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11")) (re.opt (re.union (str.to.re "/") (str.to.re "|") (str.to.re "-"))) (re.union (str.to.re "30") (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.opt (str.to.re "0")) (str.to.re "2") (re.opt (re.union (str.to.re "/") (str.to.re "-"))) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9"))))) (re.opt (re.union (str.to.re "/") (str.to.re "-"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (str.in.re X (str.to.re "ZC-BridgeHost:Subject:as.starware.com\x0a")))
; /insertBefore\(document\.body\)([^?]+createElement\([\x22\x27]TR[\x22\x27]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (str.in.re X (re.++ (str.to.re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to.re "?"))) (str.to.re "createElement(") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "TR") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "))"))) (re.+ (re.comp (str.to.re "?"))) (str.to.re "<body") (re.+ (re.comp (str.to.re "?"))) (str.to.re "</body>/i\x0a"))))
(check-sat)
