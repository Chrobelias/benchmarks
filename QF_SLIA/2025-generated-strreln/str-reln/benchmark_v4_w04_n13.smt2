(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (str.to_re "26"))))
(assert (str.in_re y (re.union (re.union (str.to_re "59") (re.* (str.to_re "4"))) (str.to_re "0"))))
(assert (str.in_re z (re.++ (re.union (str.to_re "9") (re.++ (str.to_re "2") (re.* (re.range "0" "2")))) (str.to_re "6"))))
(assert (str.in_re a (re.+ (re.+ (str.to_re "27")))))

(assert (= (+ (- (str.to_int x)) (* (- 7) (str.to_int y)) (* 10 (str.to_int z)) (* (- 10) (str.to_int a))) 36))
(assert (> (+ (* 6 (str.len y)) (* (- 4) (str.len z)) (* 5 (str.to_int x))) 45))
(assert (<= (+ (* 5 (str.to_int x)) (* (- 5) (str.to_int z)) (* (- 8) (str.to_int a))) 61))

(check-sat)