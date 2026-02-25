(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.union (re.++ (re.range "0" "9") (str.to_re "5")) (str.to_re "17")))))
(assert (str.in_re z (re.+ (str.to_re "64"))))
(assert (str.in_re y (re.* (re.++ (re.union (re.* (str.to_re "9")) (re.range "0" "8")) (str.to_re "55")))))

(assert (> (+ (* (- 6) (str.len y)) (* 8 (str.to_int y))) 23))

(check-sat)