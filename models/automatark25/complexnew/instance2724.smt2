(declare-const X String)
; /rec\.php$/Usmi
(assert (str.in.re X (str.to.re "/rec.php/Usmi\x0a")))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (not (str.in.re X (str.to.re "Informationsearchnugget\x13spastb.freeprod.comOnlineWeb.fcgi\x0a"))))
; Wareztv\x2Eseekmo\x2Ecom\sKeyloggingTRUSTYFILES\x2ECOM
(assert (str.in.re X (re.++ (str.to.re "Wareztv.seekmo.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13TRUSTYFILES.COM\x0a"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "  ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to.re " ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.range "1" "9") (re.+ (re.range "0" "9")))))))
; adserver\.warezclient\.com530Host\x3A
(assert (not (str.in.re X (str.to.re "adserver.warezclient.com530Host:\x0a"))))
(check-sat)
