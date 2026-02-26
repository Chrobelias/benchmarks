(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ "86" y x z "87")))

(assert (str.in_re x (re.++ (re.union (str.to_re "1") (re.* (str.to_re "76"))) (re.range "4" "9"))))
(assert (str.in_re a (re.union (re.++ (str.to_re "603") (re.range "0" "6")) (re.* (re.range "0" "9")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "90") (str.to_re "5")))))
(assert (str.in_re z (re.union (re.* (str.to_re "41")) (str.to_re "32"))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 10) (str.to_int y)) (* 10 (str.to_int z)) (* 4 (str.to_int a))) 67))
(assert (= (+ (* (- 8) (str.len x)) (* 2 (str.len y)) (* (- 7) (str.len z)) (* 10 (str.len a))) 95))

(check-sat)