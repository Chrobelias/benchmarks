(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "65")) (str.to_re "432")) (re.+ (str.to_re "1")))))
(assert (str.in_re z (re.+ (re.++ (re.++ (re.range "7" "9") (str.to_re "320")) (str.to_re "1")))))
(assert (str.in_re y (re.+ (re.+ (str.to_re "430")))))

(assert (> (+ (* 2 (str.len x)) (* (- 9) (str.len z)) (str.to_int x) (* 9 (str.to_int z))) 8))
(assert (= (+ (* (- 9) (str.len x)) (* (- 5) (str.len y)) (str.len z)) 73))

(check-sat)