(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "17") (re.range "7" "9")))))

(assert (> (+ (* 9 (str.len x)) (* (- 8) (str.to_int x))) 51))
(assert (> (+ (* 2 (str.len x)) (* 5 (str.to_int x))) 58))

(check-sat)