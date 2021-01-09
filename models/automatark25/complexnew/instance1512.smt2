(declare-const X String)
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
; dialupvpn\x5fpwd\w+tvlistings\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom\stoolbar\.anwb\.nl
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "tvlistings") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl\x0a")))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a"))))
; /\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\x2d[a-z0-9\x2d\x2e]+(\x3a\d{1,5})?\r\n/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com-") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a/Hi\x0a")))))
(check-sat)
