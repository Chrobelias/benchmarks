(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (re.* (re.* (str.to_re "6")))) (str.to_re "35"))))

(assert (> (+ (* 8 (str.len x)) (* (- 6) (str.to_int x))) 32))

(check-sat)