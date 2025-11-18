(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "6") (str.to_re "573")) (re.+ (re.range "1" "4")))))
(assert (str.in_re y (re.union (str.to_re "6") (re.* (str.to_re "662")))))
(assert (str.in_re z (re.++ (re.* (re.* (re.* (str.to_re "460")))) (str.to_re "64"))))
(assert (str.in_re a (re.++ (re.++ (re.+ (str.to_re "987")) (re.range "3" "5")) (str.to_re "9"))))
(assert (str.in_re b (re.union (re.* (str.to_re "4")) (re.+ (re.+ (str.to_re "8"))))))

(assert (>= (+ (* (- 10) (str.len b)) (* (- 2) (str.to_int x)) (* 8 (str.to_int a))) 4))
(assert (> (+ (* 8 (str.to_int x)) (* (- 7) (str.to_int y)) (* 6 (str.to_int z)) (* 9 (str.to_int a)) (* (- 6) (str.to_int b))) 24))
(assert (< (+ (* (- 4) (str.len a)) (* 9 (str.to_int x))) 86))

(check-sat)