(declare-const X String)
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a")))))
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (not (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a"))))
; /\*[^\/]+/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.+ (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
; <\?xml.*</note>
(assert (str.in.re X (re.++ (str.to.re "<?xml") (re.* re.allchar) (str.to.re "</note>\x0a"))))
(check-sat)
