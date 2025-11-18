(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "48") (re.+ (re.range "4" "9")))))
(assert (str.in_re y (re.++ (re.++ (re.* (str.to_re "195")) (re.range "2" "6")) (re.+ (re.range "7" "9")))))
(assert (str.in_re z (re.union (re.++ (re.++ (str.to_re "7") (re.+ (str.to_re "1"))) (str.to_re "55")) (re.range "7" "9"))))
(assert (str.in_re a (re.++ (str.to_re "83") (re.+ (str.to_re "191")))))

(assert (< (+ (str.len x) (* 10 (str.to_int z))) 89))
(assert (< (+ (* 8 (str.to_int x)) (str.to_int y) (* (- 5) (str.to_int z)) (str.to_int a)) 73))
(assert (<= (+ (* (- 3) (str.to_int x)) (* 2 (str.to_int y)) (* (- 7) (str.to_int z)) (* (- 8) (str.to_int a))) 88))
(assert (<= (+ (* 4 (str.to_int x)) (* (- 7) (str.to_int y)) (* 10 (str.to_int a))) 56))

(check-sat)