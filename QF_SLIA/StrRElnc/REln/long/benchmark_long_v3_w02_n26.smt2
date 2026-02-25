(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.+ (re.++ (str.to_re "427") (re.++ (str.to_re "5") (str.to_re "660"))))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "83")) (re.range "7" "9"))))
(assert (str.in_re z (re.++ (str.to_re "87") (re.union (re.+ (str.to_re "36")) (str.to_re "746")))))

(assert (<= (+ (* 4 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 4) (str.to_int z))) 6))
(assert (> (+ (* (- 2) (str.len x)) (* (- 2) (str.len y)) (* (- 10) (str.len z))) 34))

(check-sat)