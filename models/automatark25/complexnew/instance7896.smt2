(declare-const X String)
; ixqshv\x2fqzccsMM_RECO\x2EEXE%3fwwwwp-includes\x2Ftheme\x2Ephp\x3F
(assert (str.in.re X (str.to.re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\x0a")))
; URL\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a"))))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a")))))
; ^\s+|\s+$
(assert (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; (^([A-Za-z])([-_.\dA-Za-z]{1,10})([\dA-Za-z]{1}))(@)(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([\dA-Za-z{1}][-_.\dA-Za-z]{1,25})\.([A-Za-z]{2,4}))$)
(assert (str.in.re X (re.++ (str.to.re "@") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "{") (str.to.re "1") (str.to.re "}")) ((_ re.loop 1 25) (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))))) (str.to.re "\x0a") (re.union (re.range "A" "Z") (re.range "a" "z")) ((_ re.loop 1 10) (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))))))
(check-sat)
