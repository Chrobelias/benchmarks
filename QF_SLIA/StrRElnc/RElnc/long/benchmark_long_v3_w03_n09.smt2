(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ "44" y x) (str.++ z "11")))

(assert (str.in_re z (re.+ (re.union (re.union (re.range "6" "9") (re.range "4" "9")) (str.to_re "225")))))
(assert (str.in_re x (re.union (re.* (re.range "1" "3")) (str.to_re "44"))))
(assert (str.in_re y (re.* (str.to_re "75"))))

(assert (<= (+ (* (- 5) (str.len x)) (* (- 2) (str.len z)) (* (- 10) (str.to_int x)) (* (- 9) (str.to_int z))) 13))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 9) (str.to_int z))) 82))

(check-sat)