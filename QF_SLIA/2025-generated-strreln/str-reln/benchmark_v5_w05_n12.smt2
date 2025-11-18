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

(assert (str.in_re x (re.* (re.* (str.to_re "398")))))
(assert (str.in_re y (re.union (re.* (str.to_re "62")) (re.+ (str.to_re "714")))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "894") (re.union (re.* (str.to_re "570")) (re.range "3" "7"))) (str.to_re "3"))))
(assert (str.in_re a (re.+ (re.+ (re.union (str.to_re "0") (str.to_re "9"))))))
(assert (str.in_re b (re.union (re.+ (str.to_re "887")) (str.to_re "84"))))

(assert (> (+ (* 9 (str.len x)) (* (- 9) (str.len y)) (* (- 6) (str.len z)) (* (- 10) (str.len a)) (* (- 10) (str.len b))) 44))
(assert (<= (+ (* 9 (str.len y)) (* (- 3) (str.to_int x)) (* 7 (str.to_int b))) 98))
(assert (= (+ (* (- 10) (str.len z)) (* 7 (str.len a)) (* 3 (str.to_int x))) 62))

(check-sat)