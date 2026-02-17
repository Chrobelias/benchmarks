(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "73")) (re.* (str.to_re "656"))))))

(assert (> (* 6 (str.len x)) 32))
(assert (> (+ (* 3 (str.len x)) (* (- 4) (str.to_int x))) 75))

(check-sat)