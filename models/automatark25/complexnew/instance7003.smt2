(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a"))))
; /(^|&)filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pmi\x0a"))))
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (str.in.re X (re.union (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a65") ((_ re.loop 14 14) (re.range "0" "9"))))))
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; /^\/[a-f0-9]{32}\.eot$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".eot/U\x0a"))))
(check-sat)
