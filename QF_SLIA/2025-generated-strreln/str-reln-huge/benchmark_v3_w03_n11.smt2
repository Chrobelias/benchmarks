(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.union (re.* (str.to_re "2")) (re.+ (str.to_re "25")))))
(assert (str.in_re y (re.union (re.* (str.to_re "493")) (re.range "5" "8"))))
(assert (str.in_re z (re.union (str.to_re "21") (re.union (str.to_re "273") (re.union (re.+ (str.to_re "18")) (str.to_re "91"))))))

(assert (= (+ (* (- 2) (str.len y)) (* (- 3) (str.len z)) (* (- 7) (str.to_int x)) (* 4 (str.to_int z))) 93))
(assert (<= (+ (* 10 (str.len x)) (str.len y) (* (- 7) (str.len z))) 87))

(check-sat)