(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (str.to_re "0")))))

(assert (= (* 2 (str.to_int x)) 80))
(assert (<= (* (- 2) (str.len x)) 11))

(check-sat)