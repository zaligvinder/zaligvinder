(declare-const X String)
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13Informationsearchnugget\x13spastb.freeprod.com\x0a")))))
; Google\s+jupitersatellites\x2Ebiz\s+Eyewww\x2Eccnnlc\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jupitersatellites.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eyewww.ccnnlc.com\x13\x0a")))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
; ^([V|E|J|G|v|e|j|g])([0-9]{5,8})$
(assert (str.in.re X (re.++ (re.union (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G") (str.to.re "v") (str.to.re "e") (str.to.re "j") (str.to.re "g")) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a")))))
(check-sat)
