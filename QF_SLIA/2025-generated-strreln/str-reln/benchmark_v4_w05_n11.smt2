(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (re.union (str.to_re "192") (str.to_re "35")) (str.to_re "197")))))
(assert (str.in_re y (re.+ (str.to_re "94"))))
(assert (str.in_re z (re.+ (str.to_re "46"))))
(assert (str.in_re a (re.+ (re.++ (re.range "2" "6") (str.to_re "558")))))

(assert (>= (+ (* (- 7) (str.to_int x)) (* 6 (str.to_int y)) (* (- 8) (str.to_int z)) (* 2 (str.to_int a))) 6))
(assert (<= (+ (* (- 9) (str.len z)) (* 7 (str.len a)) (* 4 (str.to_int x)) (* 4 (str.to_int y)) (- (str.to_int z))) 83))
(assert (<= (+ (* 10 (str.len y)) (* (- 6) (str.to_int y)) (* (- 10) (str.to_int z)) (* 7 (str.to_int a))) 49))

(check-sat)