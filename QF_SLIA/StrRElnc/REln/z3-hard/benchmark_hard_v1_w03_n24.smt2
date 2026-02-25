(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "2")))))

(assert (< (* 10 (str.to_int x)) 45))
(assert (>= (+ (* 7 (str.len x)) (* (- 6) (str.to_int x))) 73))

(check-sat)