(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "32" "73" z)))

(assert (str.in_re x (re.++ (str.to_re "424") (re.* (str.to_re "65")))))
(assert (str.in_re z (re.++ (str.to_re "244") (re.union (re.range "2" "5") (re.union (re.+ (str.to_re "99")) (re.range "6" "8"))))))
(assert (str.in_re y (re.union (re.* (re.union (re.* (re.range "2" "6")) (re.range "6" "8"))) (str.to_re "8"))))

(assert (= (+ (* 6 (str.len x)) (* (- 7) (str.len y)) (* (- 2) (str.len z))) 32))
(assert (< (+ (* (- 3) (str.to_int x)) (* 5 (str.to_int y))) 99))
(assert (< (+ (* 5 (str.len x)) (* (- 6) (str.len y)) (* (- 5) (str.len z))) 88))

(check-sat)