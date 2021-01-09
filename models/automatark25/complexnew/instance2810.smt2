(declare-const X String)
; /\/se\/[a-f0-9]{100,200}\/[a-f0-9]{6,9}\/[A-Z0-9_]{4,200}\.com/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//se/") ((_ re.loop 100 200) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 6 9) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 4 200) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re ".com/Ui\x0a")))))
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))
; ICON="[^"]+"
(assert (not (str.in.re X (re.++ (str.to.re "ICON=\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
; /\x2em4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.m4p") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; OVN\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.com
(assert (str.in.re X (re.++ (str.to.re "OVN") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.com\x0a"))))
(check-sat)
