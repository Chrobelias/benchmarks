(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ z "99")))

(assert (str.in_re x (re.++ (str.to_re "8") (re.* (re.++ (str.to_re "7") (re.range "3" "6"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "3") (str.to_re "20")) (re.+ (re.range "3" "9")))))
(assert (str.in_re z (re.++ (re.range "5" "9") (re.+ (re.+ (str.to_re "36"))))))

(assert (<= (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y)) (* 9 (str.to_int z))) 28))
(assert (>= (+ (* 6 (str.len x)) (* 6 (str.len y)) (* (- 7) (str.len z)) (* (- 10) (str.to_int y))) 84))

(check-sat)