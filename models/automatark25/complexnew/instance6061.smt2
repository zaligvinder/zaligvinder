(declare-const X String)
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.com\x0a")))))
; /(^|&)filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pmi\x0a")))))
(check-sat)
