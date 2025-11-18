(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "2") (re.* (str.to_re "99")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "3")) (str.to_re "74"))))
(assert (str.in_re z (re.* (re.+ (str.to_re "305")))))
(assert (str.in_re a (re.+ (re.+ (re.union (re.range "7" "9") (str.to_re "675"))))))

(assert (> (+ (* (- 8) (str.len x)) (* 6 (str.len z)) (- (str.to_int z))) 74))
(assert (= (+ (* 5 (str.to_int x)) (* 6 (str.to_int y)) (* (- 2) (str.to_int z)) (* 4 (str.to_int a))) 18))

(check-sat)