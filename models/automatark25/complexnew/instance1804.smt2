(declare-const X String)
; eveocczmthmmq\x2fomzl\d+Host\x3Aulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to.re "Host:ulmxct/mqoyc\x0a")))))
; ^[A-Z].*$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to.re "\x0a"))))
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Iterenet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.mirarsearch.comHost:\x0a")))))
; /filename=[^\n]*\x2emax/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a"))))
; (.|[\r\n]){1,5}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
(check-sat)
