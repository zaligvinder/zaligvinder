(declare-const X String)
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in.re X (str.to.re "as.starware.com%3fUser-Agent:hostie\x0a"))))
; ( xmlns:.*=[",'].*[",'])|( xmlns=[",'].*[",'])
(assert (str.in.re X (re.union (re.++ (str.to.re " xmlns:") (re.* re.allchar) (str.to.re "=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))) (re.++ (str.to.re "\x0a xmlns=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))))))
; User-Agent\x3ASurveillancecomOnline
(assert (str.in.re X (str.to.re "User-Agent:Surveillance\x13comOnline\x0a")))
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "e2give.comrichfind.com\x22007User-Agent:www.searchreslt.com\x0a"))))
; ^((\+)?(\d{2})[-])?(([\(])?((\d){3,5})([\)])?[-])|(\d{3,5})(\d{5,8}){1}?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) (re.opt (str.to.re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to.re ")")) (str.to.re "-")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) ((_ re.loop 1 1) ((_ re.loop 5 8) (re.range "0" "9"))) (str.to.re "\x0a"))))))
(check-sat)
