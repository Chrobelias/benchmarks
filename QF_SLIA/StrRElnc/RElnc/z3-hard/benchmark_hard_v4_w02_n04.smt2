(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x y) (str.++ z "70" a)))

(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "324")) (re.range "6" "9")))))
(assert (str.in_re a (re.* (str.to_re "65"))))
(assert (str.in_re z (re.++ (str.to_re "954") (re.++ (re.range "4" "6") (re.++ (re.* (str.to_re "807")) (str.to_re "88"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "246") (re.union (str.to_re "384") (re.+ (re.range "0" "8")))))))

(assert (> (+ (* 5 (str.len x)) (* (- 4) (str.len y)) (str.len z) (* 6 (str.len a))) 43))
(assert (< (+ (* (- 5) (str.to_int x)) (* (- 3) (str.to_int y)) (* 6 (str.to_int z)) (* 2 (str.to_int a))) 99))

(check-sat)