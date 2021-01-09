(declare-const X String)
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (str.in.re X (re.++ (str.to.re "sPatternTablet = '/") (re.union (str.to.re "Tablet") (str.to.re "iPad") (str.to.re "iPod")) (str.to.re "/';\x0a"))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a"))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a"))))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a"))))
(check-sat)
