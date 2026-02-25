(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (re.union (str.to_re "90") (re.range "6" "9")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "7")) (re.++ (str.to_re "606") (re.+ (str.to_re "9"))))))
(assert (str.in_re y (re.union (str.to_re "255") (re.++ (str.to_re "5") (re.+ (str.to_re "90"))))))

(assert (< (+ (* (- 4) (str.len y)) (* 7 (str.to_int y))) 97))

(check-sat)