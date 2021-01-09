(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a")))
; /\x2f\x24\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in.re X (re.++ (str.to.re "//${#") (re.+ (re.union (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "}") (re.opt (str.to.re ".action")) (re.opt (str.to.re "/")) (str.to.re "/miU\x0a")))))
; Host\x3a[^\n\r]*snprtz\x7Cdialno\s+Agent\s+Host\x3AUser-Agent\x3A\.cfgUser-Agent\x3Axbqyosoe\x2fcpvm
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\x0a"))))
; ^([A-Z]|[a-z]|[0-9])(([A-Z])*(([a-z])*([0-9])*(%)*(&)*(')*(\+)*(-)*(@)*(_)*(\.)*)|(\ )[^  ])+$
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "0" "9")) (re.* (str.to.re "%")) (re.* (str.to.re "&")) (re.* (str.to.re "'")) (re.* (str.to.re "+")) (re.* (str.to.re "-")) (re.* (str.to.re "@")) (re.* (str.to.re "_")) (re.* (str.to.re "."))) (re.++ (str.to.re " ") (re.comp (str.to.re " "))))) (str.to.re "\x0a")))))
(check-sat)
