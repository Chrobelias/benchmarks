(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (str.to_re "40") (re.union (re.* (str.to_re "32")) (re.* (str.to_re "604"))))))
(assert (str.in_re x (re.++ (re.union (str.to_re "700") (re.+ (re.+ (re.range "0" "2")))) (re.range "0" "8"))))

(assert (> (+ (* (- 5) (str.len x)) (* (- 3) (str.to_int y))) 35))
(assert (>= (+ (* (- 2) (str.len y)) (* (- 7) (str.to_int x))) 67))

(check-sat)