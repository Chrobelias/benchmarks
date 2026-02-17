(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "62") (re.* (str.to_re "79")))))))

(assert (> (+ (* 3 (str.len x)) (* (- 3) (str.to_int x))) 70))

(check-sat)