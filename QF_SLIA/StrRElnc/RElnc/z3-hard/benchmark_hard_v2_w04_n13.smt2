(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "43" y) (str.++ x "33")))

(assert (str.in_re y (re.union (re.union (re.* (re.range "1" "9")) (str.to_re "243")) (re.range "4" "8"))))
(assert (str.in_re x (re.* (re.union (str.to_re "532") (re.++ (re.* (str.to_re "63")) (re.range "3" "9"))))))

(assert (> (+ (* (- 7) (str.to_int x)) (str.to_int y)) 81))
(assert (> (+ (* 8 (str.to_int x)) (- (str.to_int y))) 100))
(assert (<= (+ (* (- 3) (str.len x)) (* (- 3) (str.to_int y))) 84))

(check-sat)