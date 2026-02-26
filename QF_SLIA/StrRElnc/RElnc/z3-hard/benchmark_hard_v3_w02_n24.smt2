(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ "63" "20" z x)))

(assert (str.in_re y (re.++ (re.+ (re.range "0" "8")) (str.to_re "7"))))
(assert (str.in_re z (re.union (str.to_re "51") (re.+ (str.to_re "49")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "30") (str.to_re "47")))))

(assert (> (+ (* 9 (str.len x)) (* (- 3) (str.len y)) (* (- 4) (str.len z))) 26))
(assert (= (+ (* 3 (str.to_int x)) (- (str.to_int y)) (* (- 10) (str.to_int z))) 12))

(check-sat)