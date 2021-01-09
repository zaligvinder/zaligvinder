(declare-const X String)
; xmlHost\x3ADAPCURLBlazeActivity
(assert (not (str.in.re X (str.to.re "xmlHost:DAPCURLBlazeActivity\x0a"))))
; /filename=[^\n]*\x2espx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".spx/i\x0a")))))
; offers\x2Ebullseye-network\x2Ecom\s+news[^\n\r]*WatcherUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WatcherUser-Agent:\x0a"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a"))))
(check-sat)
