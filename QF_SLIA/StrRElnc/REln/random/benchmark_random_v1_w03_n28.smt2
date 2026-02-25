(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.* (re.+ (str.to_re "8")))))))

(assert (< (* (- 10) (str.to_int x)) 18))
(assert (< (+ (* 9 (str.len x)) (* 2 (str.to_int x))) 81))

(check-sat)