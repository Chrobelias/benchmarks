(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.* (re.+ (re.range "7" "9"))))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "465")) (str.to_re "7"))))
(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "585") (re.* (re.range "4" "8")))))))
(assert (str.in_re y (re.union (re.union (re.range "1" "5") (str.to_re "745")) (re.* (str.to_re "215")))))

(assert (<= (+ (* 7 (str.to_int x)) (str.to_int y) (* 2 (str.to_int z)) (* (- 6) (str.to_int a))) 17))
(assert (= (+ (* 5 (str.len x)) (* 3 (str.len y)) (* 10 (str.len z)) (* 2 (str.len a))) 71))

(check-sat)