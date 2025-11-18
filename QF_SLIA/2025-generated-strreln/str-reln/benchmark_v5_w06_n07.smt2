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

(assert (str.in_re x (re.* (re.union (re.* (re.+ (str.to_re "201"))) (str.to_re "63")))))
(assert (str.in_re y (re.++ (re.* (re.range "2" "4")) (re.* (str.to_re "32")))))
(assert (str.in_re z (re.* (re.++ (re.* (re.range "5" "9")) (str.to_re "82")))))
(assert (str.in_re a (re.* (re.union (str.to_re "17") (str.to_re "725")))))
(assert (str.in_re b (re.* (re.union (re.+ (str.to_re "64")) (str.to_re "66")))))

(assert (< (+ (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* 10 (str.to_int z)) (* (- 4) (str.to_int a)) (* (- 4) (str.to_int b))) 5))
(assert (<= (+ (* 7 (str.len x)) (* (- 10) (str.to_int x)) (* (- 5) (str.to_int z)) (* 6 (str.to_int b))) 28))
(assert (>= (+ (* (- 10) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 5) (str.to_int z)) (* 4 (str.to_int a)) (* 5 (str.to_int b))) 74))
(assert (> (+ (* (- 8) (str.len x)) (* 5 (str.len z)) (str.len a) (* (- 5) (str.to_int b))) 11))

(check-sat)