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

(assert (= (str.++ x y) (str.++ z a "96" "30")))

(assert (str.in_re a (re.* (re.++ (re.++ (re.range "4" "9") (str.to_re "97")) (str.to_re "390")))))
(assert (str.in_re y (re.* (re.union (re.* (re.range "0" "9")) (re.+ (re.range "5" "9"))))))
(assert (str.in_re x (re.* (re.* (re.+ (str.to_re "61"))))))
(assert (str.in_re z (re.union (re.++ (re.+ (re.+ (re.range "0" "8"))) (str.to_re "93")) (str.to_re "87"))))

(assert (>= (+ (* 6 (str.to_int x)) (* 7 (str.to_int y)) (* 8 (str.to_int z)) (str.to_int a)) 76))
(assert (>= (+ (* (- 8) (str.len x)) (* (- 10) (str.len y)) (* 10 (str.len z)) (* (- 9) (str.len a))) 1))

(check-sat)