(declare-const X String)
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a")))))
; Toolbarverpop\x2Epopuptoast\x2Ecomtvshowticketscount\x2Eyok\x2Ecom
(assert (not (str.in.re X (str.to.re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\x0a"))))
; ^[1-9]{1}$|^[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}$|^9999$
(assert (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to.re "9999\x0a"))))
; /^\/\d+\/\d\.zip$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/") (re.range "0" "9") (str.to.re ".zip/U\x0a")))))
; From\x3A\w+SoftActivity\d+
(assert (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
