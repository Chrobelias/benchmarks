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

(assert (str.in_re x (re.* (re.* (re.* (str.to_re "988"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "45")) (re.range "1" "3"))))
(assert (str.in_re z (re.union (re.union (re.range "5" "9") (re.union (re.+ (str.to_re "648")) (str.to_re "587"))) (str.to_re "438"))))
(assert (str.in_re a (re.union (str.to_re "492") (re.+ (re.range "1" "6")))))
(assert (str.in_re b (re.++ (re.++ (str.to_re "312") (re.+ (str.to_re "4"))) (str.to_re "0"))))

(assert (>= (+ (* 5 (str.len x)) (* 8 (str.len y)) (* 9 (str.len z)) (* (- 7) (str.len a))) 24))
(assert (< (+ (* (- 4) (str.len x)) (* 7 (str.len z)) (* 10 (str.to_int x))) 59))
(assert (= (+ (* 8 (str.len x)) (* (- 8) (str.len y)) (* 4 (str.len z)) (* (- 5) (str.len a)) (* (- 3) (str.len b))) 74))

(check-sat)