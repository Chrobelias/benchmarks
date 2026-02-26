(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "75" z)))

(assert (str.in_re z (re.++ (re.+ (str.to_re "55")) (re.union (re.range "1" "8") (str.to_re "38")))))
(assert (str.in_re x (re.+ (re.range "1" "8"))))
(assert (str.in_re y (re.* (re.range "7" "9"))))

(assert (= (+ (- (str.to_int x)) (* 8 (str.to_int y)) (* (- 2) (str.to_int z))) 64))
(assert (> (+ (* 3 (str.len x)) (* 4 (str.len y)) (* (- 9) (str.len z))) 2))

(check-sat)