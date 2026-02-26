(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y "67" x) (str.++ z "75")))

(assert (str.in_re y (re.union (re.* (str.to_re "5")) (str.to_re "217"))))
(assert (str.in_re x (re.union (re.range "0" "8") (re.* (str.to_re "956")))))
(assert (str.in_re z (re.union (re.++ (re.range "3" "7") (str.to_re "544")) (re.+ (re.range "5" "8")))))

(assert (> (+ (* 8 (str.len z)) (* 2 (str.to_int x))) 4))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 4) (str.len y)) (* (- 2) (str.len z))) 1))

(check-sat)