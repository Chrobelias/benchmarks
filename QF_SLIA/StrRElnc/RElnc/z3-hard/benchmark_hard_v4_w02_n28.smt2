(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y a) (str.++ x z "69" "94")))

(assert (str.in_re y (re.++ (re.++ (str.to_re "78") (str.to_re "98")) (re.* (str.to_re "9")))))
(assert (str.in_re a (re.union (re.++ (str.to_re "86") (str.to_re "768")) (re.+ (re.range "2" "9")))))
(assert (str.in_re x (re.+ (re.union (re.++ (re.+ (str.to_re "5")) (str.to_re "3")) (re.range "4" "9")))))
(assert (str.in_re z (re.++ (re.+ (re.* (str.to_re "65"))) (str.to_re "57"))))

(assert (> (+ (* (- 10) (str.len x)) (* (- 6) (str.len y)) (* 3 (str.len z)) (* 8 (str.len a))) 90))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 5) (str.to_int y)) (- (str.to_int z)) (* 5 (str.to_int a))) 68))

(check-sat)