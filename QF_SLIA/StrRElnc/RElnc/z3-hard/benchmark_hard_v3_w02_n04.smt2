(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "73")))

(assert (str.in_re y (re.+ (re.union (re.++ (re.range "2" "7") (re.+ (re.range "1" "8"))) (re.range "4" "9")))))
(assert (str.in_re z (re.* (re.union (re.+ (re.range "3" "8")) (re.range "4" "6")))))
(assert (str.in_re x (re.union (re.* (re.* (re.+ (str.to_re "55")))) (str.to_re "71"))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* 9 (str.to_int y)) (* (- 2) (str.to_int z))) 93))
(assert (> (+ (* (- 6) (str.len x)) (* 5 (str.len y)) (* 4 (str.len z))) 10))

(check-sat)