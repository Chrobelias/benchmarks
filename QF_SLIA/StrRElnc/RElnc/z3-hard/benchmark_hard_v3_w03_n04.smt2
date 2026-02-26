(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "44" y x)))

(assert (str.in_re z (re.+ (re.union (str.to_re "76") (re.range "3" "7")))))
(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "9")) (str.to_re "410")) (re.range "3" "5"))))
(assert (str.in_re y (re.* (re.range "2" "6"))))

(assert (<= (+ (* (- 3) (str.len x)) (* (- 4) (str.len y)) (* 9 (str.len z))) 31))
(assert (<= (+ (* 4 (str.len x)) (str.len z) (- (str.to_int y))) 8))

(check-sat)