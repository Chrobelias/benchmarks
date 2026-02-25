(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "5")) (re.++ (re.+ (str.to_re "626")) (str.to_re "17")))))
(assert (str.in_re z (re.union (str.to_re "291") (re.union (re.* (re.+ (str.to_re "158"))) (str.to_re "269")))))
(assert (str.in_re y (re.union (str.to_re "8") (re.++ (re.* (str.to_re "1")) (str.to_re "369")))))
(assert (str.in_re a (re.union (re.union (re.+ (str.to_re "948")) (str.to_re "3")) (re.+ (str.to_re "1")))))

(assert (>= (+ (* (- 9) (str.to_int x)) (* 6 (str.to_int y)) (* 5 (str.to_int z))) 27))
(assert (> (+ (* 4 (str.len x)) (* (- 2) (str.len y)) (* (- 3) (str.len a))) 27))

(check-sat)