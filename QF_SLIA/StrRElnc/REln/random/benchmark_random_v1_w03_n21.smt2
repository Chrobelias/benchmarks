(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (str.to_re "246")))))

(assert (> (str.to_int x) 74))
(assert (= (* (- 5) (str.len x)) 55))
(assert (<= (* (- 4) (str.len x)) 6))

(check-sat)