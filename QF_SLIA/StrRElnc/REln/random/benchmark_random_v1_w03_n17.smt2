(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "73")) (re.+ (str.to_re "93")))))

(assert (< (+ (* (- 5) (str.len x)) (* 2 (str.to_int x))) 68))
(assert (< (* 5 (str.to_int x)) 39))

(check-sat)