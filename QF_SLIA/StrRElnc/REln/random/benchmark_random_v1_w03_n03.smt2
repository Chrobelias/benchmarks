(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "49") (re.* (str.to_re "649")))))

(assert (< (+ (* (- 6) (str.len x)) (* 7 (str.to_int x))) 35))
(assert (< (* 10 (str.len x)) 51))

(check-sat)