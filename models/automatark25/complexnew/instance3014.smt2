(declare-const X String)
; daosearch\x2EcomSubject\x3A
(assert (not (str.in.re X (str.to.re "daosearch.comSubject:\x0a"))))
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4p/i\x0a")))))
; Host\x3A\sclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "clvompycem/cen.vcn\x0a")))))
; \x22The\s+e2give\.com\s+NETObserve
(assert (str.in.re X (re.++ (str.to.re "\x22The") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve\x0a"))))
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+\x0a")))))
(check-sat)
