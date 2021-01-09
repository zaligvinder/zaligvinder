(declare-const X String)
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; 3Awww\x2eurlblaze\x2enetulmxct\x2fmqoycEFErrorHost\x3Ae2give\.com
(assert (not (str.in.re X (str.to.re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\x0a"))))
; \b[^aeiou]+[aeiou][^aeiou]+\b
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u")) (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a"))))
(check-sat)
