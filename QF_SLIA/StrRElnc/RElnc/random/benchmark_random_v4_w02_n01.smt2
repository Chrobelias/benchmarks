(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y a) (str.++ x "55" z "99")))

(assert (str.in_re x (re.union (re.++ (str.to_re "989") (re.* (str.to_re "44"))) (re.range "2" "8"))))
(assert (str.in_re z (re.+ (re.range "0" "6"))))
(assert (str.in_re y (re.+ (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))))
(assert (str.in_re a (re.+ (re.range "7" "9"))))

(assert (> (+ (* 8 (str.len x)) (* 2 (str.len y)) (* (- 7) (str.len z)) (* (- 4) (str.len a))) 90))
(assert (>= (+ (* 9 (str.to_int x)) (* 5 (str.to_int y)) (str.to_int z) (* (- 6) (str.to_int a))) 63))

(check-sat)