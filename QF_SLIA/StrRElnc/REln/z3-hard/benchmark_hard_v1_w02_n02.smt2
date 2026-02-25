(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "829")) (str.to_re "85")) (re.* (str.to_re "60")))))

(assert (<= (* 2 (str.to_int x)) 11))
(assert (>= (* 4 (str.len x)) 55))

(check-sat)