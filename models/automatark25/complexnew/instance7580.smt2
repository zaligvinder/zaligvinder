(declare-const X String)
; DigExtNetBus\x5BStatic
(assert (not (str.in.re X (str.to.re "DigExtNetBus[Static\x0a"))))
; BasicPointsHost\x3Anews
(assert (str.in.re X (str.to.re "BasicPointsHost:news\x0a")))
; ^http[s]?://([a-zA-Z0-9\-]+\.)*([a-zA-Z]{3,61}|[a-zA-Z]{1,}\.[a-zA-Z]{2})/.*$
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))) (re.union ((_ re.loop 3 61) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "/") (re.* re.allchar) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ecgm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cgm/i\x0a"))))
; Travel\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "Travel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13serverUser-Agent:/newsurfer4/\x0a"))))
(check-sat)
