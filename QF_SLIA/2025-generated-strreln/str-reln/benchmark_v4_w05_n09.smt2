(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "2") (re.range "5" "9")) (str.to_re "838")))))
(assert (str.in_re y (re.union (str.to_re "3") (re.++ (str.to_re "0") (re.+ (str.to_re "38"))))))
(assert (str.in_re z (re.* (str.to_re "2"))))
(assert (str.in_re a (re.+ (str.to_re "923"))))

(assert (>= (+ (* 2 (str.to_int x)) (* (- 8) (str.to_int z)) (* (- 3) (str.to_int a))) 53))
(assert (<= (+ (- (str.len x)) (* (- 3) (str.len y)) (* 3 (str.len z)) (* (- 4) (str.len a))) 22))
(assert (>= (+ (* 9 (str.len y)) (- (str.to_int y))) 23))
(assert (> (+ (* 4 (str.to_int x)) (- (str.to_int y)) (* 6 (str.to_int z)) (* (- 5) (str.to_int a))) 62))

(check-sat)