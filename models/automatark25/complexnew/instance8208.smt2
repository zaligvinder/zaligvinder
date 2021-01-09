(declare-const X String)
; searches\x2Eworldtostart\x2Ecom\w+searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "searches.worldtostart.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt}{Sysuptime:\x0a"))))
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to.re "X") (re.range "0" "9"))) (str.to.re "\x0a"))))
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "%3fSupremeSoftwareoffers.bullseye-network.com\x0a"))))
; /^(([01]?\d?\d|2[0-4]\d|25[0-5])\.){3}([01]?\d?\d|2[0-4]\d|25[0-5])\/(\d{1}|[0-2]{1}\d{1}|3[0-2])$/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "."))) (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "/") (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "2"))) (str.to.re "/\x0a"))))
; /^\/[0-9]{8}\.html$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
(check-sat)
