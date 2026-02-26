(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))

(assert (= a (str.++ x y "67" "78" z)))

(assert (str.in_re x (re.+ (str.to_re "686"))))
(assert (str.in_re z (re.* (str.to_re "73"))))
(assert (str.in_re a (re.+ (re.++ (re.+ (re.range "3" "8")) (re.range "1" "5")))))
(assert (str.in_re y (re.++ (str.to_re "56") (re.++ (str.to_re "83") (re.* (str.to_re "18"))))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 6) (str.to_int y)) (* (- 3) (str.to_int z))) 83))

(check-sat)