(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.++ (re.+ (str.to_re "1")) (re.union (re.range "4" "8") (str.to_re "71")))))
(assert (str.in_re y (re.+ (str.to_re "272"))))
(assert (str.in_re z (re.++ (str.to_re "839") (re.+ (str.to_re "8")))))

(assert (<= (+ (* 8 (str.len x)) (* (- 9) (str.len y)) (* 10 (str.len z))) 20))
(assert (< (+ (* (- 3) (str.len y)) (* (- 9) (str.to_int y)) (* 7 (str.to_int z))) 84))
(assert (< (+ (* 3 (str.len z)) (* (- 10) (str.to_int x))) 8))
(assert (= (+ (str.to_int x) (* (- 2) (str.to_int y)) (* 4 (str.to_int z))) 13))

(check-sat)