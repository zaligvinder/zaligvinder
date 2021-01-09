(declare-const X String)
; /^\/jmx.jar?r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//jmx") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (not (str.in.re X (str.to.re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\x0a"))))
; ^[0-9]{10}GBR[0-9]{7}[U,M,F]{1}[0-9]{9}$
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "GBR") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "U") (str.to.re ",") (str.to.re "M") (str.to.re "F"))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in.re X (re.++ (str.to.re "SpywareStrike") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar\x0a")))))
(check-sat)
