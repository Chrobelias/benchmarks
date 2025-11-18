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

(assert (str.in_re x (re.* (str.to_re "56"))))
(assert (str.in_re y (re.union (str.to_re "28") (re.* (re.* (str.to_re "620"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "119") (str.to_re "95")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "699") (str.to_re "68")))))
(assert (str.in_re b (re.++ (re.+ (re.+ (str.to_re "123"))) (str.to_re "4"))))

(assert (<= (+ (* 7 (str.to_int x)) (* 5 (str.to_int y)) (* 2 (str.to_int z)) (* 2 (str.to_int a)) (* 8 (str.to_int b))) 51))
(assert (> (+ (* 9 (str.len y)) (* 4 (str.len z)) (* 9 (str.len a)) (* 2 (str.len b))) 97))
(assert (= (+ (* 2 (str.len x)) (* (- 3) (str.len y)) (* 4 (str.len z)) (* (- 10) (str.len a)) (* (- 8) (str.len b))) 78))

(check-sat)