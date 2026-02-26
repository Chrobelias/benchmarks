(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ z "98")))

(assert (str.in_re y (re.+ (re.union (str.to_re "20") (re.union (str.to_re "270") (re.range "3" "9"))))))
(assert (str.in_re z (re.* (re.range "3" "6"))))
(assert (str.in_re x (re.* (re.++ (re.+ (re.range "5" "8")) (str.to_re "643")))))

(assert (= (+ (* (- 2) (str.to_int x)) (* 4 (str.to_int z))) 45))
(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.len y)) (* (- 4) (str.len z))) 83))

(check-sat)