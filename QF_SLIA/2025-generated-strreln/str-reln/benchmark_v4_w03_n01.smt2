(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "1") (re.+ (str.to_re "1"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "76")) (re.++ (str.to_re "783") (str.to_re "83")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "443")) (re.+ (str.to_re "8")))))
(assert (str.in_re a (re.union (re.++ (str.to_re "6") (str.to_re "270")) (re.+ (re.range "1" "4")))))

(assert (= (+ (* 4 (str.to_int x)) (* 7 (str.to_int y)) (- (str.to_int z)) (- (str.to_int a))) 74))
(assert (> (+ (str.len x) (* (- 10) (str.len y)) (* 8 (str.len z)) (* 5 (str.len a))) 74))
(assert (<= (+ (* (- 4) (str.len x)) (* 2 (str.len y)) (* 5 (str.len z)) (* 9 (str.len a))) 34))

(check-sat)