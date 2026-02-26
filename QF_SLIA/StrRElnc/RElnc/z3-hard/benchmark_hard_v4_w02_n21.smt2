(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ "70" z) (str.++ y "81" x "25" a)))

(assert (str.in_re y (re.++ (re.* (str.to_re "350")) (str.to_re "709"))))
(assert (str.in_re z (re.union (str.to_re "7") (re.* (re.range "1" "9")))))
(assert (str.in_re a (re.+ (str.to_re "54"))))
(assert (str.in_re x (re.+ (str.to_re "143"))))

(assert (>= (+ (* 2 (str.len x)) (* (- 6) (str.len y)) (- (str.len z)) (* (- 7) (str.len a))) 35))
(assert (< (+ (- (str.to_int x)) (* 9 (str.to_int z)) (* (- 7) (str.to_int a))) 98))

(check-sat)