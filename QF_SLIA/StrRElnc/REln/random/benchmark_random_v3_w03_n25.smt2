(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "324") (re.+ (str.to_re "26")))))
(assert (str.in_re x (re.++ (re.range "0" "5") (re.union (str.to_re "19") (re.+ (str.to_re "80"))))))
(assert (str.in_re y (re.union (str.to_re "39") (re.* (re.* (re.range "2" "4"))))))

(assert (= (+ (* (- 6) (str.len x)) (- (str.len y)) (* 6 (str.len z))) 84))
(assert (= (+ (* 7 (str.to_int x)) (* 3 (str.to_int y)) (* 6 (str.to_int z))) 51))
(assert (<= (+ (* 10 (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int z))) 13))

(check-sat)